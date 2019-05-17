#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_8" {

   provisioner "local-exec" {
      command = "echo local_8"
   }

   depends_on = [
      "null_resource.local_7"
   ]
}

