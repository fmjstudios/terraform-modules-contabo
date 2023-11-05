
locals {
  bucket_name  = var.name
  storage_name = "storage_${local.bucket_name}"

  auto_scaling_state = var.auto_scaling_config["auto_scaling_state"]
  auto_scaling_limit = var.auto_scaling_config["auto_scaling_limit"]
}

resource "contabo_object_storage" "delta4x4_storage" {
  display_name = local.storage_name

  region                   = var.region
  total_purchased_space_tb = var.space_tb

  auto_scaling {
    state         = local.auto_scaling_state
    size_limit_tb = local.auto_scaling_limit
  }
}

resource "contabo_object_storage_bucket" "delta4x4_bucket" {
  name              = local.bucket_name
  object_storage_id = contabo_object_storage.delta4x4_storage.id
}
