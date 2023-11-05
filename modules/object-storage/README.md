# Terraform Module <img src="../resources/assets/vendor/terraform/Terraform_VerticalLogo_ColorWhite_RGB.png" width="200" align="right" />

## DigitalOcean Contabo Storage

This module manages object storage mounts as well as the buckets attached to them hosted by _Contabo GmbH_.

---

## 🚧 Usage

```hcl

module "contabo_bucket" {
  source = "./modules/contabo-object-storage"

  name     = "changeme"
  region   = "EU"
  space_tb = 0.5

  auto_scaling_config = {
    auto_scaling_state = "enabled"
    auto_scaling_limit = 1
  }
}

```

---

### 📜 License

**[Proprietary](./LICENSE)**

### ✉ Contact

- **Admin**: Maximilian Gindorfer
- **E-Mail**: [maximilian.gindorfer@delta4x4.com](mailto:maximilian.gindorfer@delta4x4.com)
- **Mobile**: +49 8134 93020

### © Copyright

_Assets provided by:_ **[Design Barn Inc.](https://iconscout.com)**
