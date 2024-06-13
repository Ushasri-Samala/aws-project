# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type

  tags = {
    Name = "Example EC2 Instance"
  }
}