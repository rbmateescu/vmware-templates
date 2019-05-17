#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_12" {

   provisioner "local-exec" {
      command = "echo local_12"
   }

   depends_on = [
      "null_resource.local_11"
   ]
}

