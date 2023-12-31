resource "aws_security_group" "yashika_SG" {
  count = 2
  name        = var.sg_names[count.index]
  vpc_id      = "vpc-0db9b000905eaca0e"
  description = var.sg_description[count.index]

  ingress {
    description      = var.sg_description[count.index]
    from_port        = 0
    to_port          = var.sg_to_port[count.index]
    protocol         = var.sg_protocol[count.index]
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.sg_names[count.index]
  }

}