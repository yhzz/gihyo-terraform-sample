# インプット変数
variable "unique_name" {
  type        = string
  description = "サンプルサーバの固有名"
}

variable "env" {
  type        = string
  description = "環境名の略称"
}

# GCPの仮想サーバ1台からなる最低限の構成の例
resource "google_compute_instance" "this" {
  project      = "gihyo-terraform" # 自身のプロジェクトIDに変更する
  name         = "${var.env}-${var.unique_name}"
  machine_type = "f1-micro"
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

# アウトプット変数
output "sample_server_name" {
  value       = google_compute_instance.this.name
  description = "サーバ名"
}
