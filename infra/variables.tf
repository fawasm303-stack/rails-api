variable "aws_region" {
  default = "me-central-1"
}

variable "project_name" {
  default = "rails-api-fp"
}

variable "container_port" {
  default = 3000
}

variable "cpu" {
  default = 256
}

variable "memory" {
  default = 512
}

variable "desired_count" {
  default = 1
}

variable "image_tag" {
  default = "latest"
}

variable "rails_env" {
  type    = string
  default = "production"
}

variable "db_secret_name" {
  type    = string
  default = "rails-api-fp"
}
