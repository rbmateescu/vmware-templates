#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_2" {

   provisioner "local-exec" {
      command = "echo local_2"
   }

   depends_on = [
      "null_resource.local_1"
   ]
}

