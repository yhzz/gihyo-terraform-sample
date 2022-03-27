# ほとんど変数で、名前が具体的ではないアンチパターン
module "anti_pattern_module" {
  source       = "./modules/server"
  project      = "gihyo-terraform" # 自身のプロジェクトIDに変更
  name         = "anti-pattern-module"
  machine_type = "f1-micro"
  zone         = "asia-northeast1-c"
  image        = "ubuntu-1804-bionic-v20220131"
  network      = "default"
}
