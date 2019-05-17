#############################################################################################
# Resource Definition
#############################################################################################

resource "null_resource" "local_1" {

   provisioner "local-exec" {
      command = "find . | tee -a /tmp/test_test_files"
   }

}

