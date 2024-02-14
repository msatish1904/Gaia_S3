variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket to create"
  default = ""
}

variable "region" {
  type        = string
  description = "The AWS region in which to create the S3 bucket"
  default = ""
}