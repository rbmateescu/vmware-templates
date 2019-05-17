#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_28" {

   provisioner "local-exec" {
      command = "echo local_28"
   }

   depends_on = [
      "null_resource.local_27"
   ]
}

