resource "aws_launch_configuration" "main_lc" {
  name          = "main-lc"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = [aws_security_group.main_sg.id]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "main_asg" {
  launch_configuration = aws_launch_configuration.main_lc.id
  min_size             = 2
  max_size             = 2
  desired_capacity     = 2
  vpc_zone_identifier  = [aws_subnet.private_subnet_a.id, aws_subnet.private_subnet_b.id]

  tag {
    key                 = "Name"
    value               = "main-asg"
    propagate_at_launch = true
  }

  target_group_arns = [aws_lb_target_group.main_tg.arn]
}