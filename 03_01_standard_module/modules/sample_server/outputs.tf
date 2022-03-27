# outputs.tf
output "sample_server_network_ip" {
  value       = google_compute_instance.this.network_interface.0.network_ip
  description = "サンプルサーバのIPアドレス"
  sensitive   = false
}
