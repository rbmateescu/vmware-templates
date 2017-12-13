##################### Variables ###############################

variable "name" {
	description = "Name of the Virtual Machine"
}

variable "datacenter" {
	description = "Target vSphere datacenter for Virtual Machine creation"
}

variable "vcpu" {
	description = "Number of Virtual CPU for the Virtual Machine"
	default = 1
}

variable "memory" {
	description = "Memory for Virtual Machine in MBs"
	default = 1024
}

variable "cluster" {
	description = "Target vSphere Cluster to host the Virtual Machine"
}

variable "network_label" {
	description = "vSphere Port Group or Network label for Virtual Machine's vNIC" 
}

variable "ipv4_address" {
	description = "IPv4 address for vNIC configuration"
}

variable "ipv4_gateway" {
	description = "IPv4 gateway for vNIC configuration"
}

variable "ipv4_prefix_length" {
	description = "IPv4 Prefix length for vNIC configuration"
}

variable "storage" {
	description = "Data store or storage cluster name for target VMs disks"
}

variable "vm_template" {
	description = "Source VM or Template label for cloning"
}

variable "allow_selfsigned_cert" {
    description = "Communication with vsphere server with self signed certificate"
    default = true
}

############### Optinal settings in provider ##########
provider "vsphere" {
    version = "~> 1.1"
    allow_unverified_ssl = "${var.allow_selfsigned_cert}"
}
 
data "vsphere_datacenter" "datacenter" {
  name = "${var.datacenter}"
}

data "vsphere_virtual_machine" "template" {
  name          = "${var.vm_template}"
  datacenter_id = "${data.vsphere_datacenter.datacenter.id}"
}

data "vsphere_datastore" "datastore" {
  name          = "${var.storage}"
  datacenter_id = "${data.vsphere_datacenter.datacenter.id}"
}

data "vsphere_resource_pool" "pool" {
  name          = "${var.cluster}/Resources"
  datacenter_id = "${data.vsphere_datacenter.datacenter.id}"
}

data "vsphere_network" "network" {
  name          = "840"
  datacenter_id = "${data.vsphere_datacenter.datacenter.id}"
}
################## Resources ###############################

#
# Create VM with single vnic on a network label by cloning 
#
resource "vsphere_virtual_machine" "vm_1" {
  name   = "${var.name}"
  resource_pool_id = "${data.vsphere_resource_pool.pool.id}"
  datastore_id     = "${data.vsphere_datastore.datastore.id}"
  
  num_cpus   = "${var.vcpu}"
  memory = "${var.memory}"
  guest_id = "${data.vsphere_virtual_machine.template.guest_id}"
  
  network_interface {
      network_id = "${data.vsphere_network.network.id}"
  }

  disk {
    name = "${var.name}.vmdk"
    size = "${data.vsphere_virtual_machine.template.disks.0.size}"
  }

  clone {
    template_uuid = "${data.vsphere_virtual_machine.template.id}"

    customize {
      linux_options {
        host_name = "${var.name}"
        domain    = "test.internal"
      }

      network_interface {
        ipv4_address = "${var.ipv4_address}"
        ipv4_netmask = "${var.ipv4_prefix_length}"
      }

      ipv4_gateway = "${var.ipv4_gateway}"
    }
  }
}

output "ipv4_address" {
  value = "${vsphere_virtual_machine.vm_1.network_interface.0.ipv4_address}"
}
