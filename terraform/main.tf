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

resource "aws_s3_bucket_policy" "my_bucket_policy" {
  bucket = aws_s3_bucket.my_bucket.id
  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false  

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "AddPerm"
        Effect    = "Allow"
        Principal = "*"
        Action    = ["s3:GetObject",
                     "s3:ListBucket"]
        Resource  = "arn:aws:s3:::${var.bucket_name}/*"
      }
    ]
  })
}

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
# resource "aws_s3_bucket_policy" "example" {
#   bucket = aws_s3_bucket.example.id 
#   policy = data.aws_iam_policy_document.example.json

# }