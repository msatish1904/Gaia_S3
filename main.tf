# Configure the AWS provider
provider "aws" {
  region = "eu-west-1"
aws_access_key = "AKIAW3MEFAIS2WPS72WH"
aws_secret_key = "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"
}

# Create a S3 bucket
resource "aws_s3_bucket" "terraform_state" {
  bucket		  = "${var.bucket_name}"
  
  versioning {
    enabled = true
  }  
  
  lifecycle {
    prevent_destroy = true
  }
}

