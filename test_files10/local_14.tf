#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_14" {

   provisioner "local-exec" {
      command = "echo local_14"
   }

   depends_on = [
      "null_resource.local_13"
   ]
}

