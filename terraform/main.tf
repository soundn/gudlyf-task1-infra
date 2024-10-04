module "vpc" {
  source = "./modules/vpc"
  cidr_block = var.vpc_cidr
}

module "eks" {
  source           = "./modules/eks"
  vpc_id           = module.vpc.vpc_id
  subnet_ids       = module.vpc.public_subnets
  cluster_name     = var.eks_cluster_name
  node_instance_type = var.node_instance_type
}

