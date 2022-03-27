variable "unique_name" {
  type        = string
  default     = "web-server"
  description = "サンプルサーバの固有名"
}

variable "env" {
  type        = string
  default     = "dev"
  description = "環境名の略称"
}
