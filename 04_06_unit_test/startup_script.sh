#!/bin/bash
sudo apt update
sudo apt install -y nginx
sudo echo "Terratest World" >> /var/www/html/index.html

# 簡単のため、コンフィグレーション層をスクリプトで記述した
# 現場ではAnsibleとPackerでテンプレート化する
