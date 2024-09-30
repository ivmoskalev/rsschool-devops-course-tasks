terraform {
  backend "s3" {
    bucket         = "rss-terraform-states"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
