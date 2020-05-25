# variables.tf

variable "app_prefix" {
  description = "Prefix to be used in the naming of some of the created heroku resources"
  default     = "demo-pineapple"
}

variable "app_region" {
  description = "Region to be used for heroku resources"
  default     = "us"
}

variable "app_stack" {
  description = "Platform to run the application in"
  default     = "container"
}

#  If true, Hobby or above tier required for ACM
variable "app_acm" {
  description = "The flag representing Automated Certificate Management for the app"
  default     = false
}

variable "heroku_email" {
  description = "Email associated with your heroku account"
}

variable "heroku_api_key" {}
variable "sensative_example_var" {}
