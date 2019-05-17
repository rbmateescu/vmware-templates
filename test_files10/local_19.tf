#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_19" {

   provisioner "local-exec" {
      command = "echo local_19"
   }

   depends_on = [
      "null_resource.local_18"
   ]
}

