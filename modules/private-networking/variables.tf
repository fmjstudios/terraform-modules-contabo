variable "name" {
  type        = string
  description = "The name to give to the newly created private network."
}

variable "description" {
  type        = string
  description = "The description to give to the newly created private network."
}

variable "instance_ids" {
  type        = list(number)
  description = "The list of Contabo VPS machine IDs to attach to the private network."
}

variable "region" {
  type        = string
  description = "The datacenter region where the private network is to be be created."
}

variable "region_name" {
  type        = string
  description = "A stylistic name to give to the region used for network creation."
  default     = null
}
