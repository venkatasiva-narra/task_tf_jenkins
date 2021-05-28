
resource "aws_eip" "task_nat_1" {
    depends_on =[aws_internet_gateway.task_ig]
}

resource "aws_eip" "task_nat_2" {
    depends_on =[aws_internet_gateway.task_ig]
}

resource "aws_eip" "task_nat_3" {
    depends_on =[aws_internet_gateway.task_ig]
}
