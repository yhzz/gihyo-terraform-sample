# インプット変数を変数ブロックで定義する
variable "server_name" {
  type        = string
  default     = "sample-server"
  description = "サンプルサーバのname値"
}

# GCPの仮想サーバ1台からなる最低限の構成の例
resource "google_compute_instance" "sample" {
  project      = "gihyo-terraform" # 自身のプロジェクトIDに変更する
  name         = var.server_name
  machine_type = "f1-micro" # 最小スペック
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
