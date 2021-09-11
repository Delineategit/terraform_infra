#vpc details
 
resource "aws_vpc" "vpc1" {
  cidr_block        = "10.0.0.0/24"
 
  tags = {
    Name          = "tf_vpc"
  }
}
 
#subnet details
resource "aws_subnet" "publicsubnet" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "10.0.0.0/27"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "tf_publicsubnet"
  }
}
 
resource "aws_subnet" "privatesubnet" {
  vpc_id     = aws_vpc.vpc1.id
  
  cidr_block = "10.0.0.32/27"
  availability_zone = "ap-south-1a"
 
  tags = {
    Name = "tf_privatesubnet"
  }
}