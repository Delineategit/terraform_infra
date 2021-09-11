resource "aws_instance" "server1" {
  count = var.number_of_servers
  ami           = var.ami_id
  instance_type = var.instance_type_name
  key_name = var.key_pair_name
  subnet_id = var.subnet_ids
  vpc_security_group_ids  = var.security_group_ids

  tags = {
    Name = "tfserver"
    creator = var.creator
  }
}

