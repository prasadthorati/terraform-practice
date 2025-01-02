# Defining local variables
locals {
  environment    = "dev"
  region         = "us-east-1"
  bucket_name    = "my-app-${local.environment}-bucket"
  common_tags    = {
    Environment = local.environment
    ManagedBy   = "Terraform"
  }
}

# Using the local variables in resource blocks
provider "aws" {
  region = local.region
}

resource "aws_s3_bucket" "example" {
  bucket = local.bucket_name

  tags = local.common_tags
}

output "bucket_name" {
  value = local.bucket_name
}

output "common_tags" {
  value = local.common_tags
}
