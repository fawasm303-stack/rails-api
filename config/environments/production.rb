Rails.application.configure do
  # Disable host authorization (for ALB / demo)
  config.hosts.clear

  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local = false
  config.log_level = :info
end
