# 🛠 7DTDサーバー構築手順（Ubuntu向け）

このドキュメントは、Ubuntu Server 環境に 7 Days to Die のゲームサーバーを構築する手順をまとめたものです。

---

## ✅ 前提条件

- Ubuntu Server 22.04 LTS（または同等）
- Git インストール済み
- sudo 権限を持つユーザー

---

## 🚀 セットアップ手順

### 1. リポジトリのクローン

```bash
git clone https://github.com/itooni-misaki/7dtd-server-setup.git
cd 7dtd-server-setup
```

---

### 2. SteamCMD のインストール

```bash
sudo apt update
sudo apt install steamcmd
```

---

### 3. ゲームサーバーのダウンロード（例）

```bash
mkdir -p ~/steam/7dtd
cd ~/steam/7dtd
steamcmd +login anonymous +force_install_dir ./ +app_update 294420 validate +quit
```

---

### 4. サーバー設定の確認

`config/serverconfig.xml` の内容を確認・編集してください。

---

### 5. サーバー起動

```bash
chmod +x scripts/start-server.sh
./scripts/start-server.sh
```

---

## 📎 補足情報

- 通信ポート：デフォルトは 26900（必要に応じて UFW で開放）
- ログファイルは `7dtd.log` に出力されます
- バックアップスクリプトは `scripts/` に追加予定

---

## 👤 作者情報

平田 真樹（GitHub: [itooni-misaki](https://github.com/itooni-misaki)）  
Linux学習の一環として本構築を実施 