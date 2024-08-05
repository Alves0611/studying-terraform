resource "null_resource" "replacement_trigger" {
  triggers = {
    "startup_script" = filesha256("user_data.sh")
  }
}

resource "aws_instance" "this" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  user_data = filebase64("user_data.sh")

  tags = {
    Name = "Ubuntu"
    Env  = "Dev"
  }

  lifecycle {
    create_before_destroy = true
    replace_triggered_by = [
      null_resource.replacement_trigger
    ]
    ignore_changes = [tags]
    
  }
}
