terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_iam_user" "deploy" {
  name = "prod-deploy"
  path = "/system/"

  tags = {
    tag-key = "prod-deploy"
  }
}