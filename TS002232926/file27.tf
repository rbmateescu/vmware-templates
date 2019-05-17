##################### Variables ###############################

############### Optinal settings in provider ##########
provider "vsphere" {
    #version = "~> 1.9"
    allow_unverified_ssl = "${var.allow_selfsigned_cert}"
}
 
data "vsphere_datacenter" "datacenter" {
  name = "${var.datacenter}"
}