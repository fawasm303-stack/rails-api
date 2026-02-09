terraform {
  backend "s3" {
    bucket       = "fm-rails-api"
    key          = "rails-api/terraform.tfstate"
    region       = "me-central-1"
    encrypt      = true
    use_lockfile = true
  }
}
