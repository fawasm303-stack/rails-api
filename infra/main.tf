data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

locals {
  tags = {
    Project = var.project_name
  }
}

# ECS Cluster module
module "ecs_cluster" {
  source     = "./modules/ecs_cluster"
  name       = var.project_name
  aws_region = var.aws_region
  tags       = local.tags
}

# ALB module (no TG)
module "alb" {
  source     = "./modules/alb"
  name       = var.project_name
  vpc_id     = data.aws_vpc.default.id
  subnet_ids = data.aws_subnets.default.ids
  tags       = local.tags
}
