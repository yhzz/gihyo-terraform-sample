# tfstateファイルをGCS上で管理
terraform {
  backend "gcs" {
    #事前に作成したGCSバケットに修正する
    # https://cloud.google.com/storage/docs/creating-buckets
    bucket = "my-gihyo-terraform-bucket"
    prefix = "02_09_backend"
  }
}

# GCPの仮想サーバ1台からなる最低限の構成の例
resource "google_compute_instance" "sample" {
  project      = "gihyo-terraform" # 自身のプロジェクトIDに変更する
  name         = "sample-server"
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

# アウトプット変数をアウトプットブロックで定義する
output "sample_server_network_ip" {
  value       = google_compute_instance.sample.network_interface.0.network_ip
  description = "サンプルサーバのIPアドレス"
}
