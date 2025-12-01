terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "7.12.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "google_apis" {
  source = "../gcp/api-service"
  services = [
    "gmail.googleapis.com",
    "storage.googleapis.com",
  ]
}

module "google_cloud_strage" {
  source = "../gcp/cloud-storage"
  prefix = "zvveitech"
}
