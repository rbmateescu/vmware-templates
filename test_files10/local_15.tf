#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_15" {

   provisioner "local-exec" {
      command = "echo local_15"
   }

   depends_on = [
      "null_resource.local_14"
   ]
}

