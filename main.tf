terraform {
  backend "s3" {
    bucket         = var.terraform_state_bucket_name
    key            = "terraform.tfstate"
    region         = var.aws_region
    encrypt        = true
  }
}
