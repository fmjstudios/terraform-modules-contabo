output "id" {
  value       = contabo_instance.delta4x4_instance.id
  description = "The Contabo machine ID for the newly created instance"
}

output "ip_config" {
  value       = contabo_instance.delta4x4_instance.ip_config
  description = "The IP configuation for the newly created Contabo instance"
}

output "public_ip_address" {
  value       = local.outputs["public_ip_address"]
  description = "The main public IP address of the newly created Contabo instance"
}

output "disk_mb" {
  value       = contabo_instance.delta4x4_instance.disk_mb
  description = "The size of the disk attached to the instance in MB"
}

output "ram_mb" {
  value       = contabo_instance.delta4x4_instance.ram_mb
  description = "The size of the RAM attached to the instance in MB"
}

output "server_status" {
  value       = contabo_instance.delta4x4_instance.status
  description = "The current server status for the newly created Contabo instance"
}

