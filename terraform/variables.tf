variable "aws_region" {
  default = "eu-north-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "eks_cluster_name" {
  default = "my-eks-cluster"
}

variable "node_instance_type" {
  default = "t3.medium"
}
