terraform {
  backend "s3" {
    bucket = "your-terraform-state-bucket"       # S3 bucket to store the state
    key    = "state/${terraform.workspace}/terraform.tfstate" # Unique path for each workspace
    region = "us-west-2"                         # AWS region where the bucket is located
  }
}
