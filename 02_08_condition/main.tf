# マシンタイプを環境ごとに切り替える
variable "env" {
  type        = string
  default     = "dev"
  description = "環境名の略称"
}

# GCPの仮想サーバ1台からなる最低限の構成の例
resource "google_compute_instance" "sample" {
  project = "gihyo-terraform" # 自身のプロジェクトIDに変更する
  name    = "sample-server"
  machine_type = (
    var.env == "prd" ? "e2-medium" : "f1-micro"
  )
  zone = "asia-northeast1-c"
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
