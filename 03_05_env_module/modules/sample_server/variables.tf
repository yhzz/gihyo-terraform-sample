# variables.tf
variable "server_name" {
  type        = string
  default     = "sample-server"
  description = "サンプルサーバのname値"
}

variable "machine_type" {
  type        = string
  default     = "f1-micro"
  description = "サンプルサーバのマシンタイプ"
}
