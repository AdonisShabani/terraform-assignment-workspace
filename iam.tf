module "IAM-module" {
  source  = "app.terraform.io/devops-training-ick/IAM-module/assigment"
  version = "1.0.0"
  # insert required variables here
  user_name   = "adonis-user"
  policy_name = "adonis-policy"
  policy_document = {
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:*", "iam:GetAccountPasswordPolicy", "elasticloadbalancing:DescribeLoadBalancers"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
      {
        Action = [
          "iam:ChangePassword"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
      {
        Action = [
          "s3:*"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  }
}
