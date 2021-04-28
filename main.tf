variable "pm_api_url" {
  type        = string
  description = "node proxmox"
}

variable "pm_user" {
  type        = string
  description = "user proxmox"
}

variable "pm_password" {
  type        = string
  description = "password proxmox"
}

variable "pm_timeout" {
  type        = number
  description = "timeout"
}


provider "proxmox" {
    pm_api_url = var.pm_api_url
    pm_tls_insecure = true
    pm_user = var.pm_user
    pm_password = var.pm_password
    pm_timeout = var.pm_timeout
    pm_parallel = 1
}

terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.6.8"
    }
  }
}
