#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_3" {

   provisioner "local-exec" {
      command = "echo local_3"
   }

   depends_on = [
      "null_resource.local_2"
   ]
}

