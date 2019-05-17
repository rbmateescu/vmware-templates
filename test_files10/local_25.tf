#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_25" {

   provisioner "local-exec" {
      command = "echo local_25"
   }

   depends_on = [
      "null_resource.local_24"
   ]
}

