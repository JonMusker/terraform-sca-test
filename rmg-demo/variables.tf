variable "auth_url" {
  description = "Oauth2  URL for authentication"
  type        = string
}

variable "tenant_domain_name" {
  description = "Tenant sub domain name"
  type        = string
}

variable "platform_domain_name" {
  description = "platform domain name"
  type        = string
  default     = "cyberark.cloud"
}

variable "username" {
  description = "SCA service user username"
  type        = string
  sensitive   = true
}

variable "password" {
  description = "SCA service user password"
  type        = string
  sensitive   = true
}

