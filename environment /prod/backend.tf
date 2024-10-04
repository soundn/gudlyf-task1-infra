terraform {
  backend "s3" {
    bucket = "my-ken-states"
    key    = "prod/terraform.tfstate"
    region = "your-aws-region"
  }
}