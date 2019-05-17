#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_20" {

   provisioner "local-exec" {
      command = "echo local_20"
   }

   depends_on = [
      "null_resource.local_19"
   ]
}

