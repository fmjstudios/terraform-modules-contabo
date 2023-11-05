variable "display_name" {
  type        = string
  description = "The display name to give to the VPS in customer control panel."
}

variable "image" {
  type        = map(string)
  description = "The OS image name and type in order to determine image ID programatically. Defaults to Ubuntu 22.04."
  default = {
    os_type = "Linux"
    name    = "ubuntu-22.04"
  }
}

variable "product_id" {
  type        = string
  default     = "V2"
  description = "The Contabo product ID to use for the new VPS. Defaults to 'V2'."
}

variable "region" {
  type        = string
  description = "The region in which to create the Contabo VPS."
}

variable "period" {
  type        = number
  description = "The period of time to subscribe to the server to."
}

variable "cloud_config" {
  type        = any
  description = "Values for rendering of a Cloud-init template file."
  default     = {}
}

