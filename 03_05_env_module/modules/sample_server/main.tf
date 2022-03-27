# GCPの仮想サーバ1台からなる最低限の構成の例
resource "google_compute_instance" "this" {
  project      = "gihyo-terraform" # 自身のプロジェクトIDに変更する
  name         = var.server_name
  machine_type = var.machine_type
  zone         = "asia-northeast1-c"
  boot_disk {
    initialize_params {
      # GCPが管理するubuntuのイメージを利用する
      image = "ubuntu-1804-bionic-v20220131"
    }
  }
  network_interface {
    # 簡単のためデフォルトを利用する
    network = "default"
  }
}
