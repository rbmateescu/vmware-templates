##################### Variables ###############################

variable "datacenter" {
	description = "Target vSphere datacenter for Virtual Machine creation"
}

variable "allow_selfsigned_cert" {
    description = "Communication with vsphere server with self signed certificate"
    default = true
}

############### Optinal settings in provider ##########
provider "vsphere" {
    #version = "~> 1.9"
    allow_unverified_ssl = "${var.allow_selfsigned_cert}"
}
 
data "vsphere_datacenter" "datacenter" {
  name = "${var.datacenter}"
}