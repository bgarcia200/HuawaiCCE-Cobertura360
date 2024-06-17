terraform {
  required_providers {
    huaweicloud = {
      source  = "huaweicloud/huaweicloud"
      version = "~> 1.0"
    }
  }
}

provider "huaweicloud" {
  auth_url     = var.auth_url
  region       = var.region
  access_key   = var.access_key
  secret_key   = var.secret_key
  project_name = var.project_name
}
