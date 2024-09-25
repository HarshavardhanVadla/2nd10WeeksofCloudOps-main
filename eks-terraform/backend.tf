terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "projh"
    key    = "eks/terraform.tfstate"
    region = "sa-east-1"
  }

  required_version = ">= 1.6.3"
}
