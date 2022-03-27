# WebサーバのURLをアウトプット
output "web_server_url" {
  value       = "http://${google_compute_instance.this.network_interface.0.access_config.0.nat_ip}"
  description = "ウェブサーバのURL"
}
