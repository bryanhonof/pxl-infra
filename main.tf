terraform {
  cloud {
    organization = "bryanhonof"
    workspaces {
      name = "pxl-webtech"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}

provider "gandi" {
  personal_access_token = var.gandi_pat
}
