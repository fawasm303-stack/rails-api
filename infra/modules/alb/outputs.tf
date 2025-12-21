output "alb_arn" {
  value = aws_lb.new-alb.arn
}

output "alb_dns_name" {
  value = aws_lb.new-alb.dns_name
}

output "listener_http_arn" {
  value = aws_lb_listener.http.arn
}

output "alb_sg_id" {
  value = aws_security_group.alb.id
}
