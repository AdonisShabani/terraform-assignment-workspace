resource "aws_s3_bucket" "bucket" {
  bucket = "adonis-training-s3-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
