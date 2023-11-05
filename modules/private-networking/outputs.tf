output "name" {
  value       = contabo_private_network.delta4x4_network.name
  description = "The name of the newly created Contabo private network."
}

output "id" {
  value       = contabo_private_network.delta4x4_network.id
  description = "The ID of the newly created Contabo private network."
}

output "cidr" {
  value       = contabo_private_network.delta4x4_network.cidr
  description = "The CIDR range of the newly created Contabo private network."
}

output "datacenter" {
  value       = contabo_private_network.delta4x4_network.data_center
  description = "The datacenter location of the newly created Contabo private network."
}

output "instances" {
  value       = contabo_private_network.delta4x4_network.instances
  description = "The instances attached to the newly created Contabo private network."
}
