terraform {
  backend "s3" {
    bucket       = "terraform-statefile-fp"
    key          = "fm-rails-api/terraform.tfstate"
    region       = "me-central-1"
    encrypt      = true
    use_lockfile = true
  }
}
