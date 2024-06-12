# # Create an EC2 instance
# resource "aws_instance" "example" {
#   ami           = "ami-08a0d1e16fc3f61ea"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "Example EC2 Instance"
#   }
# }


# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type

  tags = {
    Name = "Example EC2 Instance"
  }
}