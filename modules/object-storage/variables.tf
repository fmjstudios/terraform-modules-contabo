variable "name" {
  type        = string
  description = "The name to give to the newly created storage space and S3 bucket."
}

variable "region" {
  type        = string
  description = "The region to create the new storage space in"
}

variable "space_tb" {
  type        = number
  description = "The space of TB to purchase upon creation of the storage space"
}

variable "auto_scaling_config" {
  type        = any
  description = "The Auto-scaling configuration for the new storage space."
  default     = {}
}
