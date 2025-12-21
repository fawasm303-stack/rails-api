output "alb_dns" {
  value = module.alb.alb_dns_name
}

output "health_url" {
  value = "http://${module.alb.alb_dns_name}/health"
}

output "ecs_cluster" {
  value = module.ecs_cluster.cluster_name
}

output "ecr_repo" {
  value = aws_ecr_repository.app.repository_url
}

output "ecs_service" {
  value = aws_ecs_service.app.name
}
