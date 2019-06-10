

provider "vsphere" {
    #version = "~> 1.9"
    allow_unverified_ssl = "true"
}

resource "null-resource" "test" {
  provisioner "local-exec" {
    command = "echo \">>>>>>> \" &&  echo $VSPHERE_USER && echo \" >>>>>>>\"" 
  }
}