# outputs.tf
output "server" {
  value = google_compute_instance.this
}
