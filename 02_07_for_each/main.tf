# マップ形式の変数でサーバごとの固有値を定義
locals {
  servers_zone = {
    "sample0" = "asia-northeast1-a",
    "sample1" = "asia-northeast1-c",
  }
}

# GCPの仮想サーバ1台からなる最低限の構成の例
resource "google_compute_instance" "sample" {
  for_each     = local.servers_zone
  project      = "gihyo-terraform" # 自身のプロジェクトIDに変更する
  name         = each.key
  machine_type = "f1-micro" # 最小スペック
  zone         = each.value
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
