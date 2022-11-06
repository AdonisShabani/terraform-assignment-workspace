resource "aws_ecr_repository" "foo" {
  name                 = "webapp-adonis-assignment"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
