#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_16" {

   provisioner "local-exec" {
      command = "echo local_16"
   }

   depends_on = [
      "null_resource.local_15"
   ]
}

