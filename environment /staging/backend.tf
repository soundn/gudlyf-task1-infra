terraform {
  backend "s3" {
    bucket = "my-ken-states"
    key    = "staging/terraform.tfstate"
    region = "your-aws-region"
  }
}