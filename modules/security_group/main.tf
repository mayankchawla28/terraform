resource "aws_security_group" "my_security_group" {
  vpc_id = var.vpc_id
  name = var.sg_name

  ingress {
    from_port   = 2800
    to_port     = 2800
    protocol    = "tcp"
    cidr_blocks = [var.cidr_block]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
