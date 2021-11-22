terraform {
  backend "s3" {
    bucket         = "terraform-state-mybucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "sprints"
  }
}
