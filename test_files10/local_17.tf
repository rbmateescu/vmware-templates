#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_17" {

   provisioner "local-exec" {
      command = "echo local_17"
   }

   depends_on = [
      "null_resource.local_16"
   ]
}

