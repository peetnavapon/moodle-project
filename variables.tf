variable "tencent_cloud_secret_id"{
  type        = string
  sensitive   = true
  description = "Tencent Cloud Secret ID"
}

variable "tencent_cloud_secret_key" {
  type        = string
  sensitive   = true
  description = "Tencent Cloud Secret Key"
}

variable "tencent_cloud_region" {
  type        = string
  description = "Tencent Cloud Region"
}

variable "tencent_db_password" {
  type        = string
  sensitive   = true
  description = "Password for Tencent Cloud Database"
}
