resource "aws_iam_user" "users" {
  for_each = toset([
    "firstuser",
    "seconduser",
    "thirduser",
  ])
  name = each.key
}

resource "aws_iam_group" "multigroup" {
  for_each = toset([
    "sales",
    "devops",
    "marketing",
  ])
  name = each.key
}


resource "aws_key_pair" "deployer" {
  key_name   = "first-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_s3_bucket" "b" {
  bucket = "my-bucet-bekzod"
}

resource "aws_iam_user" "tim" {
    name = "tim"
}

resource "aws_iam_group" "environment" {
    name = "environment"
}

resource "aws_iam_group_membership" "team" {
    name = "tf-testing-group-membership"
    users = [
        aws_iam_user.tim.name
    ]
    group = aws_iam_group.environment.name
}


