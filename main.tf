provider "aws"{
region = "us-east-1"
}
vim modules/my_instance/main.tf
resource "aws_instance" "one" {
  ami           = "ami-02a53b0d62d37a757"
  instance_type = "t2.micro"
  tags = {
    Name = "hcp-server"
  }
}
