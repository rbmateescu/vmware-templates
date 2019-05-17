#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_9" {

   provisioner "local-exec" {
      command = "echo local_9"
   }

   depends_on = [
      "null_resource.local_8"
   ]
}

