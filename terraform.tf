terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket         = "terraform-backend-terraformbackends3bucket-guadwb7hv7jm"
    key            = "pipeline"
    region         = "us-east-1"
    use_lockfile = true
    profile = "singj6_aws1-prodtest"
  }
}

provider "aws" {
  default_tags {
    tags = {
      "Environment" = "Test"
      "Project"     = "Terraform"
      "Operation"   = "Nokia"
    }
  }
}
