# tfstateファイルをGCS上で管理
terraform {
  backend "gcs" {
    #事前に作成したGCSバケットに修正する
    bucket = "my-gihyo-terraform-bucket"
    prefix = "02_10_remote_state"
  }
}

# 02_09_backendのステートからアウトプット値を取得する
data "terraform_remote_state" "backend" {
  backend = "gcs"
  config = {
    bucket = "my-gihyo-terraform-bucket"
    prefix = "02_09_backend" //前項のtfstateファイルを指定
  }
}

# 取得した値を表示するためにアウトプットブロックを利用する
output "remote_state_output_value" {
  value = (data.terraform_remote_state.backend.
  outputs.sample_server_network_ip)
  description = "02_09_backendのステートから取得したサンプルサーバのIPアドレス"
}
