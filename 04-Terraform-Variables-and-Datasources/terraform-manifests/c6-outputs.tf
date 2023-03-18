# Terraform Output Values

# EC2 Instance Public IP

output "publicipofinstance" {
  description = "EC2 instance public IP"
  value = aws_instance.terraform2.public_ip
}

# EC2 Instance Public DNS

output "publicDNS" {
  description = "EC2 instance public IP"
  value = aws_instance.terraform2.public_dns
}

