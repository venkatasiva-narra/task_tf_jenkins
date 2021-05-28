resource "aws_subnet" "task_public_subnet_1"{
    vpc_id = "${aws_vpc.task_vpc.id}"
    cidr_block = "190.160.0.0/24"
    availability_zone = "us-west-2a"

    tags = {
        Name = "task_public_subnet_1"
    }
}

resource "aws_subnet" "task_public_subnet_2"{
    vpc_id = "${aws_vpc.task_vpc.id}"
    cidr_block = "190.160.10.0/24"
    availability_zone = "us-west-2b"

    tags = {
        Name = "task_public_subnet_2"
    }
}

resource "aws_subnet" "task_public_subnet_3"{
    vpc_id = "${aws_vpc.task_vpc.id}"
    cidr_block = "190.160.11.0/24"
    availability_zone = "us-west-2c"

    tags = {
        Name = "task_public_subnet_3"
    }
}
