terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.164.37.0"
    }
  }

    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "us-east-1"

}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "hola1"

}

resource "aws_s3_bucket_public_access_block" "s3_block"{
    bucket = aws_s3_bucket.s3_bucket.s3_bucket.id 

    block_public_acls = true
    block_public_policy = true
    ignore_public_acls = true
}

#Terraform needs to be installed on your machine
# You can do this by using the CLI on a web browser - Will be Authenticated automatically