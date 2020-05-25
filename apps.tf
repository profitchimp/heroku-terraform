# apps.tf

resource "heroku_app" "development" {
  name   = "${var.app_prefix}-development"
  region = var.app_region
  stack  = var.app_stack
  acm    = var.app_acm
}

resource "heroku_app" "staging" {
  name   = "${var.app_prefix}-staging"
  region = var.app_region
  stack  = var.app_stack
  acm    = var.app_acm
}

resource "heroku_app" "production" {
  name   = "${var.app_prefix}-production"
  region = var.app_region
  stack  = var.app_stack
  acm    = var.app_acm
}