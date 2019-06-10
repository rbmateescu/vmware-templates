provider "vsphere" {
    #version = "~> 1.9"
    allow_unverified_ssl = "${var.allow_selfsigned_cert}"
}

  provisioner "local-exec" {
    command = "echo \">>>>>>> \" &&  echo $VSPHERE_USER && echo \" >>>>>>>\"" 
  }