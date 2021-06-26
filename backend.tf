terraform {
  backend "s3" {
    bucket = var.bucket
    key    = var.key
    region = "ca-central-1"
  }
}