terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.48.1"
    }
    gandi = {
      version = "2.3.0"
      source  = "go-gandi/gandi"
    }
  }
}
