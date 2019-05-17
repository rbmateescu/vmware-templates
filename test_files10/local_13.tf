#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_13" {

   provisioner "local-exec" {
      command = "echo local_13"
   }

   depends_on = [
      "null_resource.local_12"
   ]
}

