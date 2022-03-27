# GCPの仮想サーバ1台からなる最低限の構成の例
resource "google_compute_instance" "sample" {
  count        = terraform.workspace == "prd" ? 1 : 0
  project      = "gihyo-terraform" # 自身のプロジェクトIDに変更する
  name         = "${terraform.workspace}-sample-server"
  machine_type = var.machine_type # 最小スペック
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
