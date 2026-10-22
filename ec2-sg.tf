resource "aws_instance" "terraform" {
  ami           = " "
  instance_type = "t3.micro"

  tags = {
    Name = "terraform"
  }

}

resource "aws_security_group" "allow-all" {
  # ... other configuration ...

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  
  }



ingress {
    from_port        = 0 #from port 0 to all ports
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

}