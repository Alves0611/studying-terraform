resource "aws_instance" "nodejs_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "Ubuntu"
  }
}
