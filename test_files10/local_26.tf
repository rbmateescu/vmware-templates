#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_26" {

   provisioner "local-exec" {
      command = "echo local_26"
   }

   depends_on = [
      "null_resource.local_25"
   ]
}

