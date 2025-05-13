#!/bin/bash
# 7DTDサーバー起動スクリプト（仮）
# 実行前提: steamcmdでサーバー導入済、./7DaysToDieServer.x86_64 が存在する

cd ~/steam/7dtd          # 実際のインストール先に合わせて変更
./7DaysToDieServer.x86_64 -configfile=serverconfig.xml -logfile 7dtd.log