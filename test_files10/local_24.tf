#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_24" {

   provisioner "local-exec" {
      command = "echo local_24"
   }

   depends_on = [
      "null_resource.local_23"
   ]
}

