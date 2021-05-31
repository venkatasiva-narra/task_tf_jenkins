resource "aws_instance" "private_instance"{
  ami           = "ami-0cf6f5c8a62fa5da6"
  tenancy       = "default"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.task_private_subnet_1.id}"
  tags = {
    Name = "private_instance"
  }
}

resource "aws_instance" "public_instance"{
  ami           = "ami-0cf6f5c8a62fa5da6"
  tenancy       = "default"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.task_public_subnet_1.id}"
  tags ={
    Name = "public_instance"
  }
}
