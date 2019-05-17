#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_23" {

   provisioner "local-exec" {
      command = "echo local_23"
   }

   depends_on = [
      "null_resource.local_22"
   ]
}

