

provider "vsphere" {
    #version = "~> 1.9"
    allow_unverified_ssl = "true"
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo \">>>>>>> \" &&  echo $VSPHERE_PASSWORD && echo \" >>>>>>>\"" 
  }
}