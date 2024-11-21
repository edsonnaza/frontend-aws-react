# provider "aws" {
#   region = var.region
# }

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  
  // acl  = "private"
  tags = {
    Name        = "My S3 Bucket"
    Environment = "Production"
  }
}

# resource "aws_s3_bucket_policy" "my_bucket_policy" {
#   bucket = aws_s3_bucket.my_bucket.id

#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Sid       = "AddPerm"
#         Effect    = "Allow"
#         Principal = "*"
#         Action    = "s3:GetObject"
#         Resource  = "arn:aws:s3:::${var.bucket_name}/*"
#       }
#     ]
#   })
# }

#  resource "aws_s3_bucket" "this" {
#   bucket = "edson-react-demo-app-2024"
#   acl    = "private" # La ACL predeterminada es "private", lo que significa que no se permite el acceso público
# }

# resource "aws_s3_bucket_ownership_controls" "this" {
#   bucket = aws_s3_bucket.this.id

#   rule {
#     object_ownership = "BucketOwnerPreferred"
#   }
# }
