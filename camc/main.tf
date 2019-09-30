resource "camc_scriptpackage" "create_test" {
  program = ["/bin/bash", "${path.module}/create_script.sh"]
  on_create = true
}

resource "camc_scriptpackage" "delete_test" {
  program = ["/bin/bash", "${path.module}/delete_script.sh"]
  on_delete = true
}
