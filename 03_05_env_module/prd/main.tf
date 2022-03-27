# サンプルサーバモジュールを呼び出す
module "sample" {
  source       = "../modules/sample_server"
  server_name  = "prd-sample-server"
  machine_type = "e2-medium"
}

