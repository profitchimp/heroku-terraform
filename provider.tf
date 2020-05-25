# profider.tf

# Configure the Heroku provider
provider "heroku" {
  email   = "you@youremail.com"
  api_key = var.heroku_api_key
}