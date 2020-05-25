# configs.tf

# Common configs shared between all apps within pipeline
resource "heroku_config" "common" {
  vars = {
    NON_SENSATIVE_EXAMPLE_VAR = true
  }

  sensitive_vars = {
    SENSATIVE_EXAMPLE_VAR = var.sensative_example_var
  }
}

# Associate development app with config vars
resource "heroku_app_config_association" "development" {
  app_id = heroku_app.development.id

  vars           = heroku_config.common.vars
  sensitive_vars = heroku_config.common.sensitive_vars
}

# Associate staging app with config vars
resource "heroku_app_config_association" "staging" {
  app_id = heroku_app.staging.id

  vars           = heroku_config.common.vars
  sensitive_vars = heroku_config.common.sensitive_vars
}

# Associate production app with config vars
resource "heroku_app_config_association" "production" {
  app_id = heroku_app.production.id

  vars           = heroku_config.common.vars
  sensitive_vars = heroku_config.common.sensitive_vars
}