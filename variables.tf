variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "default CIDR range of the VPC"
}
variable "aws_region" {
  default     = "eu-north-1"
  description = "aws region"
}
variable "kubernetes_version" {
  description = "Kubernetes version to use for the EKS cluster. If not set, the latest available version will be used."
  type        = string
  default     = null
}
variable "environment" {
  description = "The environment for the deployment (e.g., dev, staging, production)"
  type        = string
  default     = null
}
