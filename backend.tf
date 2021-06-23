terraform {
  backend "s3" {
    bucket = "ijoseda-devops"
    key    = "Devops2021/DevopsProject/wk1Proj-statefile"
    region = "ca-central-1"
  }
}