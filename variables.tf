variable "cloud_secret_id"{
  type        = string
  sensitive   = true
  description = "Tencent Cloud Secret ID"
}

variable "cloud_secret_key" {
  type        = string
  sensitive   = true
  description = "Tencent Cloud Secret Key"
}

variable "cloud_region" {
  type        = string
  description = "Tencent Cloud Region"
}

variable "db_password" {
  type        = string
  sensitive   = true
  description = "Password for Tencent Cloud Database"
}
