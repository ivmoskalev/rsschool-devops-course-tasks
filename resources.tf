# main.tf
resource "aws_s3_bucket" "terraform-states" {
  bucket = var.terraform_state_bucket_name
  acl    = "private"
}

resource "aws_iam_role" "GithubActionsRole" {
  name = var.terraform_github_actions_role_name
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Principal" : {
          "Federated" : "arn:aws:iam::${var.aws_account_id}:oidc-provider/token.actions.githubusercontent.com"
        },
        "Action" : "sts:AssumeRoleWithWebIdentity",
        "Condition" : {
          "StringEquals" : {
            "token.actions.githubusercontent.com:sub" : "repo:${var.github_repository_name}:*"
          }
        }
      }
    ]
    }
  )
}

resource "aws_iam_role_policy_attachment" "ec2_full_access" {
  role       = var.terraform_github_actions_role_name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_role_policy_attachment" "route53_full_access" {
  role       = var.terraform_github_actions_role_name
  policy_arn = "arn:aws:iam::aws:policy/AmazonRoute53FullAccess"
}

resource "aws_iam_role_policy_attachment" "s3_full_access" {
  role       = var.terraform_github_actions_role_name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_role_policy_attachment" "iam_full_access" {
  role       = var.terraform_github_actions_role_name
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

resource "aws_iam_role_policy_attachment" "vpc_full_access" {
  role       = var.terraform_github_actions_role_name
  policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
}

resource "aws_iam_role_policy_attachment" "sqs_full_access" {
  role       = var.terraform_github_actions_role_name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
}

resource "aws_iam_role_policy_attachment" "eventbridge_full_access" {
  role       = var.terraform_github_actions_role_name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEventBridgeFullAccess"
}
