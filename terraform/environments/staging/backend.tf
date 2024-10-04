terraform {
  backend "s3" {
    bucket = "my-terraform-states"
    key    = "stage/terraform.tfstate"
    region = "eu-north-1"
  }
}
