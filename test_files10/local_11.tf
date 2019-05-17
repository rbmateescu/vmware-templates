#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_11" {

   provisioner "local-exec" {
      command = "echo local_11"
   }

   depends_on = [
      "null_resource.local_10"
   ]
}

