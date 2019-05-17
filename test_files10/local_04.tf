#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_4" {

   provisioner "local-exec" {
      command = "echo local_4"
   }

   depends_on = [
      "null_resource.local_3"
   ]
}

