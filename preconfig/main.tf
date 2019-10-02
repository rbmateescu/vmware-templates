variable "ssh_key" {
  description = "key "
}

variable "hooks" {
  description = "Hooks into different stages in the cluster setup process"
  type        = "map"
  default     = {"boot-preconfig" = [
        "while [ ! -f /opt/ibm/.imageload_complete ]; do sleep 5; done"
      ]}
}

module "icpprovision" {
    source = "./modules"
    ssh_key = "${var.ssh_key}"
    hooks = "${var.hooks}"
}