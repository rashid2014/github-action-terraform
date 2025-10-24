terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "metroc-terraform-2025-tfstate"
    key    = "env/dev/terraform.tfstate"
    region = "ca-central-1"
  }
}