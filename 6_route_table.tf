
resource "aws_route_table" "public_route" {
    vpc_id="${aws_vpc.task_vpc.id}"

    route {
        cidr_block ="0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.task_ig.id}"
    }
}


resource "aws_route_table" "private_route_1" {
    vpc_id="${aws_vpc.task_vpc.id}"

    route {
        cidr_block ="0.0.0.0/0"
        nat_gateway_id = "${aws_nat_gateway.task_ng_1.id}"
    }
}


resource "aws_route_table" "private_route_2" {
    vpc_id="${aws_vpc.task_vpc.id}"

    route {
        cidr_block ="0.0.0.0/0"
        nat_gateway_id = "${aws_nat_gateway.task_ng_2.id}"
    }
}


resource "aws_route_table" "private_route_3" {
    vpc_id="${aws_vpc.task_vpc.id}"

    route {
        cidr_block ="0.0.0.0/0"
        nat_gateway_id = "${aws_nat_gateway.task_ng_3.id}"
    }
}
