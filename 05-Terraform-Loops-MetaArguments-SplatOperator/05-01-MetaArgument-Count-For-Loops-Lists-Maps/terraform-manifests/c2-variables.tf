# Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instnace Type"
  type = string
  default = "t3.micro"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
  type = string
  default = "terraform"
}

# AWS EC2 Instance Type - List

variable "instance_type_list" {
  description = "instance type list"
  type = list(string)
  default = [ "t2.micro", "t3.micro", "t2.small" ]
  
}


# AWS EC2 Instance Type - Map

variable "instance_type_map" {
  description = "instance type map"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "prod" = "t2.micro"
    "qa" = "t3.small"
  }

}

