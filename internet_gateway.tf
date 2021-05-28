
resource "aws_internet_gateway" "task_ig"{
    vpc_id = "${aws_vpc.task_vpc.id}"

    tags = {
        Name = "task_ig"
    }
}
