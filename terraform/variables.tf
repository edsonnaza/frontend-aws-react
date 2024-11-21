variable "region" {
  description = "AWS region where the S3 bucket will be created"
  type        = string
  default     = "ap-southeast-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "bucket_acl" {
  description = "Access Control List (ACL) for the S3 bucket"
  type        = string
  default     = "private"
}

variable "enable_versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = true
}

variable "bucket_tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default = {
    Environment = "Development"
    Project     = "TerraformS3"
  }
}

variable "cloudfront_origin_path" {
  description = "The CloudFront origin path"
  type        = string
  default     = ""
}

variable "cloudfront_price_class" {
  description = "The price class for the CloudFront distribution"
  type        = string
  default     = "PriceClass_All"
}

variable "cloudfront_default_root_object" {
  description = "The default root object for the CloudFront distribution"
  type        = string
  default     = "index.html"
}
