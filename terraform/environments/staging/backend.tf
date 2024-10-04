terraform {
  backend "s3" {
    bucket = "my-ken-states"
    key    = "stage/terraform.tfstate"
    region = "eu-north-1"
  }
}
