terraform {
  backend "gcs" {
    bucket = "zvveitech-bucket"
    prefix = "terraform/state"
  }
}
