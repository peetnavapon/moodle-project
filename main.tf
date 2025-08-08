terraform {
  required_providers {
    tencentcloud = {
      source  = "tencentcloudstack/tencentcloud"
      version = ">= 1.81.42"
    }
  }
}

provider "tencentcloud" {
  secret_id  = var.cloud_secret_id
  secret_key = var.cloud_secret_key
  region     = var.region
}