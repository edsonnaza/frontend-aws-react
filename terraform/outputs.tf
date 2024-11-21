output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.my_bucket.bucket
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.my_bucket.arn
}

output "bucket_region" {
  description = "The region where the S3 bucket is located"
  value       = var.region
}

output "bucket_public_url" {
  description = "The public URL of the S3 bucket (applicable for public-read ACL)"
  value       = var.bucket_acl == "public-read" ? "https://${aws_s3_bucket.my_bucket.bucket}.s3.${var.region}.amazonaws.com" : "Bucket is not public"
}
