variable "cloud_secret_id" {
  description = "Tencent Cloud Secret ID"
  type        = string
  sensitive   = true
}

variable "cloud_secret_key" {
  description = "Tencent Cloud Secret Key"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "Tencent Cloud region"
  type        = string
  default     = "ap-bangkok"
}

variable "availability_zone" {
  description = "Availability zone in the region"
  type        = string
  default     = "ap-bangkok-1"
}

variable "image_id" {
  description = "Tencent Cloud Ubuntu image ID"
  type        = string
  default     = "img-pi0ii46r"
}

variable "instance_type" {
  description = "Tencent Cloud instance type"
  type        = string
  default     = "S3.MEDIUM4"
}

variable "vm_password" {
  description = "Password for the VM login"
  type        = string
  sensitive   = true
}

variable "db_password" {
  type        = string
  sensitive   = true
  description = "Password for Tencent Cloud Database"
}