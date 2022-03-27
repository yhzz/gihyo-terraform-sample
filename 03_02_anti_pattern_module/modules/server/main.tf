resource "google_compute_instance" "this" {
  project      = var.project
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = var.network
  }
}
