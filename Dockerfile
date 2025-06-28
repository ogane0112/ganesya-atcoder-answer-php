FROM ubuntu:22.04

# タイムゾーン設定（必要なら）
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 必要なパッケージだけインストール
RUN apt-get update && \
    apt-get install -y --no-install-recommends php-cli && \
    rm -rf /var/lib/apt/lists/*

# 作業ディレクトリ
WORKDIR /workspace

# .bashrcをプロジェクトからrootホームにコピー
COPY .bashrc /root/.bashrc


