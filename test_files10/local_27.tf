#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_27" {

   provisioner "local-exec" {
      command = "echo local_27"
   }

   depends_on = [
      "null_resource.local_26"
   ]
}

