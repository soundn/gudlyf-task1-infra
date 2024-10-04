provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "../../modules/vpc"
  cidr_block = "10.0.0.0/16"
}

module "eks" {
  source           = "../../modules/eks"
  vpc_id           = module.vpc.vpc_id
  subnet_ids       = module.vpc.public_subnets
  cluster_name     = "dev-cluster"
  node_instance_type = "t3.medium"
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}
