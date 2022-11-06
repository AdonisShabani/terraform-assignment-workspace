resource "aws_s3_bucket" "bucket" {
  bucket = "adonis-bucket-training-bucket"

  tags = {
    Name = "My bucket"
  }
}
