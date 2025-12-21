output "cluster_id" {
  value = aws_ecs_cluster.cluster.id
}

output "cluster_name" {
  value = aws_ecs_cluster.cluster.name
}

output "execution_role_arn" {
  value = aws_iam_role.ecs_exec.arn
}

output "log_group_name" {
  value = aws_cloudwatch_log_group.ecs.name
}
