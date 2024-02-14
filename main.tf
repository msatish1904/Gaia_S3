# Configure the AWS provider
provider "aws" {
   region = "us-east-1"
   access_key = "AKIAW3MEFAIS4V46K4SZ"
   secret_key = "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"
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

