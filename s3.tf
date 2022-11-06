resource "aws_s3_bucket" "bucket" {
  bucket = "adonis-training-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
