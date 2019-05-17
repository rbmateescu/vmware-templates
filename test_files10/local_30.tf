#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_30" {

   provisioner "local-exec" {
      command = "echo local_30"
   }

   depends_on = [
      "null_resource.local_29"
   ]
}

