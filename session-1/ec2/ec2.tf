resource "aws_instance" "web" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]

  tags = {
    Name = "HelloTerraform"
  }
}

resource "aws_security_group" "roboshop-all" {
  name        = var.sg-group-name
  description = var.sg-group-description

  ingress {
    description = "Allow All ports"
    from_port   = var.inbound-from-port # 0 means all ports
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
    #ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop-all-aws"
  }

}

