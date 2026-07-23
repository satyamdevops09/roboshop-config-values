provider "vault" {
  address = "http://vault-internal.sdevops09.shop:8200"
  token   = var.token
}

terraform {
  backend "s3" {
    bucket = "terraform-s09"
    key    = "roboshop-config-values/terraform.tfstate"
    region = "us-east-1"
  }
}