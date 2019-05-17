#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_21" {

   provisioner "local-exec" {
      command = "echo local_21"
   }

   depends_on = [
      "null_resource.local_20"
   ]
}

