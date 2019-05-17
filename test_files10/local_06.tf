#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_6" {

   provisioner "local-exec" {
      command = "echo local_6"
   }

   depends_on = [
      "null_resource.local_5"
   ]
}

