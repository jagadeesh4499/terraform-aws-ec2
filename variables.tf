# This is Optional, User can always override the default variable
# t2.micro, t3.micro, t3.medium
variable "instance_type" {
  default = "t2.micro"
  type    = string
  validation {
    condition   = contains(["t2.micro", "t3.micro", "t3.medium"], var.instance_type)
    description = "instance type can only be one t2.micro, t3.micro, t3.medium"
  }
}
# This is mandatory, User must provide the AMI ID.
variable "ami_id" {
  type = string
}