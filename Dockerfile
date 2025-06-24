FROM php:8.3-cli

# タイムゾーンやロケールの設定（必要なら）
ENV TZ=Asia/Tokyo

# 作業ディレクトリ
WORKDIR /workspace
