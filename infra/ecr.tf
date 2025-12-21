resource "aws_ecr_repository" "app" {
  name         = var.project_name
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Project = var.project_name
  }

}

output "ecr_url" {
  value = aws_ecr_repository.app.repository_url
}
