resource "contabo_private_network" "delta4x4_network" {
  name        = var.name
  description = var.description

  instance_ids = var.instance_ids

  region      = var.region
  region_name = var.region_name
}
