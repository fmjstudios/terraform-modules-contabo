# data "contabo_image" "image_id" {
#   os_type = var.image["os_type"]
#   name    = var.image["name"]
# }

locals {
  contabo_image_map = {
    "ubuntu-22.04" = "afecbb85-e2fc-46f0-9684-b46b1faf00bb"
  }
}

locals {
  os_image_name      = var.image["name"]
  os_image_id        = local.contabo_image_map[local.os_image_name]
  ssh_allowed_users  = join(" ", var.cloud_config["ssh"].allow_users)
  ssh_allowed_groups = join(" ", var.cloud_config["ssh"].allow_groups)
}

data "template_file" "cloud_config" {
  template = file("${path.module}/templates/cloud-config.tftpl")

  vars = {
    users                 = yamlencode(var.cloud_config["users"])
    enable_ssh_pwauth     = var.cloud_config["enable_ssh_pwauth"]
    pwauth_expire_passwds = var.cloud_config["pwauth_expire_passwds"]
    chpasswd_users        = indent(4, yamlencode(var.cloud_config["chpasswd_users"]))

    timezone = var.cloud_config["timezone"]
    locale   = var.cloud_config["locale"]

    preserve_hostname         = var.cloud_config["preserve_hostname"]
    hostname                  = var.cloud_config["hostname"]
    fqdn                      = var.cloud_config["fqdn"]
    prefer_fqdn_over_hostname = var.cloud_config["prefer_fqdn_over_hostname"]
    manage_etc_hosts          = var.cloud_config["manage_etc_hosts"]

    ssh_port           = var.cloud_config["ssh"].port
    ssh_listen_address = var.cloud_config["ssh"].listen_address
    ssh_log_level      = var.cloud_config["ssh"].log_level
    ssh_allow_users    = local.ssh_allowed_users
    ssh_allow_groups   = local.ssh_allowed_groups
  }
}

data "template_cloudinit_config" "cloud_config" {
  gzip          = false
  base64_encode = false

  part {
    filename     = "init.cfg"
    content_type = "text/cloud-config"
    content      = data.template_file.cloud_config.rendered
  }
}


resource "contabo_instance" "delta4x4_instance" {
  display_name = var.display_name
  image_id     = local.os_image_id


  product_id = var.product_id
  region     = var.region
  period     = var.period

  user_data = data.template_cloudinit_config.cloud_config.rendered
}


locals {
  ip_config = try(index(contabo_instance.delta4x4_instance.ip_config, 0), null)
  outputs = {
    public_ip_address = local.ip_config.v4.ip
  }
}
