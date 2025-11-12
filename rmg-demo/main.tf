terraform {
  required_providers {
    sca = {
      # Provider version is 1.0.0
      source = "cyberark/sca/sca"
    }
  }
}

provider "sca" {
  auth_url             = var.auth_url
  tenant_domain_name   = var.tenant_domain_name
  platform_domain_name = var.platform_domain_name
  username             = var.username
  password             = var.password
  debug                = false
}

