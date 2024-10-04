terraform {
  backend "s3" {
    bucket = "my-terraform-states"
    key    = "prod/terraform.tfstate"
    region = "eu-north-1"
  }
}
