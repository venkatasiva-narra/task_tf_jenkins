
resource "aws_route_table_association" "public_1"{
    subnet_id = "${aws_subnet.task_public_subnet_1.id}"
    route_table_id = "${aws_route_table.public_route.id}"
}

resource "aws_route_table_association" "public_2"{
    subnet_id = "${aws_subnet.task_public_subnet_2.id}"
    route_table_id = "${aws_route_table.public_route.id}"
}

resource "aws_route_table_association" "public_3"{
    subnet_id = "${aws_subnet.task_public_subnet_3.id}"
    route_table_id = "${aws_route_table.public_route.id}"
}

resource "aws_route_table_association" "private_1"{
    subnet_id = "${aws_subnet.task_private_subnet_1.id}"
    route_table_id = "${aws_route_table.private_route_1.id}"
}

resource "aws_route_table_association" "private_2"{
    subnet_id = "${aws_subnet.task_private_subnet_2.id}"
    route_table_id = "${aws_route_table.private_route_2.id}"
}

resource "aws_route_table_association" "private_3"{
    subnet_id = "${aws_subnet.task_private_subnet_3.id}"
    route_table_id = "${aws_route_table.private_route_3.id}"
}
