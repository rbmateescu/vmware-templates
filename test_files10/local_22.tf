#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_22" {

   provisioner "local-exec" {
      command = "echo local_22"
   }

   depends_on = [
      "null_resource.local_21"
   ]
}

