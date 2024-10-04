terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.10"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "eks" {
  source          = "../../modules/eks"
  cluster_name    = "prod-eks-cluster"
  vpc_cidr        = "10.2.0.0/16"
  aws_region      = var.aws_region
  environment     = "prod"
}
