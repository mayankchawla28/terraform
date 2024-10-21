resource "aws_instance" "my_instance" {
  ami           = "ami-0522ab6e1ddcc7055"
  instance_type = "t2.micro"


  key_name = "my-key-pair"

  tags = {
    Name = "MyTerraformInstance"
  }
}
