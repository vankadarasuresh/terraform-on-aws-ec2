# Resource: EC2 Instance
resource "aws_instance" "testinstance1" {
  ami = "ami-0533f2ba8a1995cf9"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    Name = "EC1"
  }
  
}