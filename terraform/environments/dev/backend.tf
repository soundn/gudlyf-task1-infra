terraform {
  backend "s3" {
    bucket = "my-ken-states"
    key    = "dev/terraform.tfstate"
    region = "eu-north-1"
  }
}
