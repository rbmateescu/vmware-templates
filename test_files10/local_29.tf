#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_29" {

   provisioner "local-exec" {
      command = "echo local_29"
   }

   depends_on = [
      "null_resource.local_28"
   ]
}

