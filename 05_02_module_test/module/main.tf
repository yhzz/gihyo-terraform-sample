# 最低限のWebサーバ構成の例
resource "google_compute_instance" "this" {
  project      = "gihyo-terraform" # 自身のプロジェクトIDに変更する
  name         = "${var.env}-${var.unique_name}"
  machine_type = "f1-micro" # 最小スペック
  zone         = "asia-northeast1-c"
  boot_disk {
    initialize_params {
      # GCPが管理するubuntuのイメージを利用する
      image = "ubuntu-1804-bionic-v20220325"
    }
  }
  network_interface {
    # 簡単のためデフォルトを利用する
    network = "default"
    access_config {} //Public IPを付与
  }
  # ネットワークタグで0.0.0.0/0からのhttpアクセスを許可
  tags = ["http-server"]
  # nginxを立ち上げるスクリプト
  metadata_startup_script = file("${path.module}/startup_script.sh")
}
