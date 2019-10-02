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

resource "null_resource" "icp-boot-preconfig" {
  
  # The first master is always the boot master where we run provisioning jobs from
  connection {
    host          = "169.62.203.38"
    user          = "root"
    private_key   = "${var.ssh_key}"
  }

  # Run stage hook commands
  provisioner "remote-exec" {
    inline = ["${var.hooks["boot-preconfig"]}"]
  }
}

