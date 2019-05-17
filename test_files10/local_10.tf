#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_10" {

   provisioner "local-exec" {
      command = "echo local_10"
   }

   depends_on = [
      "null_resource.local_9"
   ]
}

