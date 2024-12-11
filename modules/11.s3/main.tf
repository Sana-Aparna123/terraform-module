resource "aws_s3_bucket" "s3buckets" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}

# resource "aws_s3_bucket_policy" "news3policy" {
#   bucket = "awsb65devbucket01235"
#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Sid    = "EnforceSecureTransport"
#         Effect = "Allow"
#         Principal = {
#           AWS = ["*"]
#         }
#         Action = [
#           "s3:GetObject",
#           "s3:PutObject",
#           "s3:DeleteObject",
#           "s3:ListBucket"
#         ]
#         Resource = [
#           "arn:aws:s3:::devopsb25terraformdev",
#           "arn:aws:s3:::devopsb25terraformdev/*"
#         ]
#         Condition = {
#           StringEquals = {
#             "aws:PrincipalArn": [
#               "arn:aws:iam::242201281931:user/module-testing"
#             ]
#           }
#         }
#       }
#     ]
#   })
# }


