resource "aws_iam_role" "role" {
  name = "tf_role"
 
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}
 
data "aws_iam_policy_document" "instance-assume-role-policy" {
  statement {
    actions = ["sts:AssumeRole"]
 
    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}
 
resource "aws_iam_role" "instance69" {
  name               = "instance_role"
  path               = "/system/"
  assume_role_policy = data.aws_iam_policy_document.instance-assume-role-policy.json
}