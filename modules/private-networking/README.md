# Terraform Module <img src="../resources/assets/vendor/terraform/Terraform_VerticalLogo_ColorWhite_RGB.png" width="200" align="right" />

## Contabo Private Networking

This module manages private networks hosted by _Contabo GmbH_.

---

## 🚧 Usage

```hcl

module "contabo_vpc" {
  source = "./modules/contabo-private-networking"

  name         = "dummy1-vpc"
  region       = "EU"
  description  = "The private network for the machine 'dummy1.delta4x4.net'."
  instance_ids = [module.contabo_server_dummy1.id, module.contabo_server_tank1.id]
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
