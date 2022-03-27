# GCPの仮想サーバ1台からなる最低限の構成の例
module "sample" {
  source      = "./modules/sample_server"
  server_name = "using-module-server"
}
