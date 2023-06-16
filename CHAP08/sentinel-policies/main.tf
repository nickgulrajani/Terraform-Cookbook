terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "cdw-dash"

    workspaces {
      name = "New-Terraform-Cookbook"
    }
  }
}



resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@"
}
