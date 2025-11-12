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
}

resource "sca_policy" "rmg-demo-az-muskernet" {
  name         = "RMG-Demo-Azure-Muskernet"
  csp          = "AZURE"
  roles        = var.roles
  identities   = var.identities
  access_rules = var.access_rules
  end_date     = var.end_date
  start_date   = var.start_date
}