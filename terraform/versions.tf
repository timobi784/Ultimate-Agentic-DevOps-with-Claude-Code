terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Remote state backend. Create the bucket + DynamoDB table once, then
  # uncomment and run `terraform init -migrate-state`.
  # backend "s3" {
  #   bucket         = "CHANGE-ME-tfstate-bucket"
  #   key            = "portfolio/terraform.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "CHANGE-ME-tf-locks"
  #   encrypt        = true
  # }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project   = var.project_name
      ManagedBy = "Terraform"
    }
  }
}

# CloudFront + ACM for CloudFront must live in us-east-1.
provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"

  default_tags {
    tags = {
      Project   = var.project_name
      ManagedBy = "Terraform"
    }
  }
}
