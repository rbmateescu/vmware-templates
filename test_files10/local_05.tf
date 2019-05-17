#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_5" {

   provisioner "local-exec" {
      command = "echo local_5"
   }

   depends_on = [
      "null_resource.local_4"
   ]
}

