resource "aws_lb_target_group" "my_target_group" {

  health_check {
    interval            = 10
    path                = "/"
    protocol            = "HTTP"
    timeout             = 5
    healthy_threshold   = 3
    unhealthy_threshold = 2
  }

  name        = "my-target-group"
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"
  # vpc_id      = "${my_vpc.task_vpc.id}"
}

resource "aws_lb" "my_aws_alb" {
  name     = "my-aws-alb"
  internal = false
  subnets  = [aws_subnet.task_public_subnet_1.id]

  tags = {
    Name = "my_aws_alb"
  }
  ip_address_type    = "ipv4"
  load_balancer_type = "application"

}

resource "aws_lb_listener" "test_alb_listener" {
  load_balancer_arn = aws_lb.my_aws_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    target_group_arn = aws_lb_target_group.my_target_group.arn
    type             = "forward"
  }
}


resource "aws_alb_target_group_attachment" "public_instance" {
  target_group_arn = aws_lb_target_group.my_target_group.arn
  target_id        = aws_instance.public_instance.id
}
