#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_7" {

   provisioner "local-exec" {
      command = "echo local_7"
   }

   depends_on = [
      "null_resource.local_6"
   ]
}

