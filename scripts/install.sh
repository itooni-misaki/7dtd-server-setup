#!/bin/bash

echo "🔄 サーバー構築を開始します..."

# 1. 必要なパッケージのインストール
echo "📦 パッケージをインストール中..."
sudo apt update && sudo apt install -y steamcmd unzip ufw

# 2. SteamCMDを使って7DTDをインストール
echo "🎮 7DTDサーバーをダウンロード中..."
mkdir -p ~/7dtd/server
cd ~/7dtd
steamcmd +login anonymous +force_install_dir ./server +app_update 294420 validate +quit

# 3. UFW設定
echo "🛡 ファイアウォール設定（UFW）を適用中..."
sudo ufw allow 26900:26902/udp
sudo ufw allow ssh
sudo ufw enable

# 4. インストール後の案内
echo "✅ セットアップ完了！"
echo "ℹ️ 次の操作を手動で行ってください："
echo " - start-server.sh を作成し、サーバーを起動"
echo " - 必要に応じて systemd サービスを設定"

exit 0