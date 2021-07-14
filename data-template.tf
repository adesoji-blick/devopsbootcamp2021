data "template_file" "ec2_user_data" {
  template = file("${path.module}/bootstrap.txt")
}

data "template_file" "ec2_user_data_2" {
  template = file("${path.module}/bootstrap2.txt")
}