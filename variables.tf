variable "service_name" {}

locals {
  default_tags   = ["service:${var.service_name}", "tf", "testing"]
  default_notify = "pagerduty-HelloWorld"
}
