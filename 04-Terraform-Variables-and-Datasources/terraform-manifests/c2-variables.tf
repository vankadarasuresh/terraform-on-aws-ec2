# Input Variables
# AWS Region
variable "aws_region" {
    description = "region used in aws"
    type = string
    default = "us-east-1"  
}

# AWS EC2 Instance Type

variable "instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t2.micro"
    sensitive = true
}


# AWS EC2 Instance Key Pair

variable "instance_keypair" {
  description = "EC2 key pair"
  type =  string
  default = "terraform"
  
}



