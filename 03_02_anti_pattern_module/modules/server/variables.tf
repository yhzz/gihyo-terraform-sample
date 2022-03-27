variable "project" {
  default = "gihyo-terraform" # 自身のプロジェクトIDに変更する
}

variable "name" {
  default = "anti-pattern-module"
}

variable "machine_type" {
  default = "f1-micro"
}

variable "zone" {
  default = "asia-northeast1-c"
}

variable "image" {
  default = "ubuntu-1804-bionic-v20220131"
}

variable "network" {
  default = "default"
}
