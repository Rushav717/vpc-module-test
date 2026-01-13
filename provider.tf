terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
  backend "s3" {
    bucket         = "82s-tf-remote-state-dev-143"
    key            = "module-demo-vpc"
    region         = "us-east-1"
    dynamodb_table = "82s-tf-remote-state-dev-143"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}