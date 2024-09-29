terraform {
  required_version = ">= 1.9.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Specify the version constraint here
    }
  }
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_key
}

// IAM role and group and policy
resource "aws_iam_group" "developers" {
  name = "developers"
}

resource "aws_iam_group_policy_attachment" "developers_readonly_iam" {
  group      = aws_iam_group.developers.name
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
}

// EC2
resource "aws_instance" "my_instance" {
  ami           = "ami-0522ab6e1ddcc7055" # Amazon linus 2 AMI 
  instance_type = "t2.micro"

  # Key pair for SSH access (optional, replace with your key pair)
  key_name = "my-key-pair"

  tags = {
    Name = "MyTerraformInstance"
  }
}
