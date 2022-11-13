module "ubuntu" {
  source = "./modules/ec2"
 
  number_of_servers         = var.ubuntu_number_of_servers
  ami_id          = var.ubuntu_ami_id
  instance_type_name = var.ubuntu_instance_type_name
  key_pair_name      = var.ubuntu_key_pair_name
  subnet_ids     = aws_subnet.publicsubnet.id
  security_group_ids  = [aws_security_group.all_traffic.id,]
 
  #tags = 
 
    creator = var.creator
    purpose = "testing"
    owner = "shreya"
  
}