terraform {
  backend "remote" {
    organization = "radumateescu"

    workspaces {
      name = "vmware-template"
    }
  }
}
