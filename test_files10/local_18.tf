#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_18" {

   provisioner "local-exec" {
      command = "echo local_18"
   }

   depends_on = [
      "null_resource.local_17"
   ]
}

