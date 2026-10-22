resource "aws_instance" "terraform" {
  ami           = " "
  instance_type = "t3.micro"

  tags = {
    Name = "terraform"
  }
}
