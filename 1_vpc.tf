
resource "aws_vpc" "task_vpc"{
    cidr_block = "190.160.0.0/16"
    instance_tenancy = "default"

    tags = {
        Name = "task_vpc"
    }
}

resource "aws_internet_gateway" "task_ig"{
    vpc_id = "${aws_vpc.task_vpc.id}"

    tags = {
        Name = "task_ig"
    }
}
