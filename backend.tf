terraform {
  backend "s3" {
    bucket = "pfx-config"
    key    = "hello-world-datadog.tfstate"
    region = "us-east-1"
  }
}
