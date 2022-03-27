# サンプルサーバモジュールを呼び出す
module "sample" {
  source       = "../modules/sample_server"
  server_name  = "dev-sample-server"
  machine_type = "f1-micro"
}

