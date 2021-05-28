
resource "aws_nat_gateway" "task_ng_1"{
    allocation_id = "${aws_eip.task_nat_1.id}"
    subnet_id = "${aws_subnet.task_public_subnet_1.id}"

    tags = {
        Name = "task_ng_1"
    }
}

resource "aws_nat_gateway" "task_ng_2"{
    allocation_id = "${aws_eip.task_nat_2.id}"
    subnet_id = "${aws_subnet.task_public_subnet_2.id}"

    tags = {
        Name = "task_ng_2"
    }
}

resource "aws_nat_gateway" "task_ng_3"{
    allocation_id = "${aws_eip.task_nat_3.id}"
    subnet_id = "${aws_subnet.task_public_subnet_3.id}"

    tags = {
        Name = "task_ng_3"
    }
}
