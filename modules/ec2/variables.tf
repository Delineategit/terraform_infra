variable "creator" {
  type = string
}
 
variable "number_of_servers" {
  type = string
}
 
variable "key_pair_name" {
  type = string
}
 
# AMI id
variable "ami_id" {
  type = string
}
 
# Instance Type
variable "instance_type_name" {
  type = string
}
variable "subnet_ids" {
  type = string
}
 
variable "security_group_ids" {
  type = list(string)
}