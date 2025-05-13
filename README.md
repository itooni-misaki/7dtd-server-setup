# 🎮 7 Days to Die Linuxゲームサーバー構築セットアップ

> このプロジェクトは、Linux（Ubuntu）環境において「7 Days to Die（7DTD）」のマルチプレイヤーゲームサーバーを自動構築・管理するためのセットアップスクリプトおよび設定ファイルをまとめたものです。

---

## 📁 ディレクトリ構成

```plaintext
7dtd-server-setup/
├── README.md             # 本ファイル（導入説明）
├── scripts/              # 起動・停止・バックアップ用スクリプト類
├── config/               # serverconfig.xmlなどの設定ファイル
├── images/               # 構成図や画面キャプチャ
└── docs/                 # 補足資料（メモや導入時の注意点など）
```

---

## 🚀 セットアップ手順

1. このリポジトリをクローン：

```bash
git clone https://github.com/itooni-misaki/7dtd-server-setup.git
cd 7dtd-server-setup
```

2. スクリプトに実行権限を付与（初回のみ）：

```bash
chmod +x scripts/*.sh
```

3. サーバーを起動：

```bash
./scripts/start-server.sh
```

※ スクリプトの中身は `scripts/` にて順次解説予定。

---

## ⚙️ 使用環境・前提条件

| 項目 | 内容 |
|------|------|
| OS   | Ubuntu Server 22.04 LTS |
| 必須 | `steamcmd`, `ufw`, `7dtd`本体インストール済 |
| 推奨 | rootまたはsudo権限ありのユーザー環境 |

---

## 🧱 主要ファイルの説明

| ファイル | 役割 |
|---------|------|
| `scripts/start-server.sh` | サーバーの起動用スクリプト |
| `config/serverconfig.xml` | ゲームサーバーの設定ファイル |
| `images/setup-flow.png` | サーバー構築手順の図解（任意追加） |

---

## 🔐 注意点とセキュリティ

- 公開前には必ず以下を確認してください：
  - 個人IP・メールアドレスなどの削除
  - APIキーやパスワードの伏せ忘れがないか
  - 実行ログに意図しない情報が含まれていないか

---

## 🧑‍💻 作者について

| 項目 | 内容 |
|------|------|
| 名前 | 平田 真樹（GitHub: [itooni-misaki](https://github.com/itooni-misaki)） |
| 専門 | Linux / サーバー構築 / インフラエンジニア志望 |
| 備考 | このリポジトリは就職活動向けポートフォリオの一環です。 |

---

## 📸 画面キャプチャ（任意）

> 実際の操作画面や構成図などは `/images` に格納しています。

---

## 📄 ライセンス

MIT License（予定・変更可）