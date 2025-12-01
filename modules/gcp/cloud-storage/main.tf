resource "google_storage_bucket" "bucket" {
  name = "${var.prefix}-bucket"
  location = "us-west1"
  uniform_bucket_level_access = true
}