// Configure Terraform providers
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
// Define AWS provider configuration
provider "aws" {
  region = "us-east-1"   //provide your Region here  
}
// Include modules for specific configurations

module "eks_cluster" {
  source = "github.com/lily4499/terraform-aws-eks-dvpc.git/my_eks"

  cluster_name                = "liliekscluster"  //provide your Cluster Name here
  eks_version                 = "1.26"
  ami_type                    = "AL2_x86_64"
  instance_types              = ["t3.small", "t3.medium", "t3.large"]
  subnet_ids = [
    "subnet-062bafb72ff1b9c71",
    "subnet-00f1308ab05d4d97a"
  ]
}
