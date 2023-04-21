# ベースイメージ
FROM node:16-alpine

# 作業ディレクトリ
WORKDIR /app

# 依存関係のインストール
COPY package*.json ./
RUN npm install

# ソースコードのコピー
COPY . .

# ビルド
RUN npx nuxi build

# 開発サーバーがリッスンするポートを公開
EXPOSE 3000

# 開発サーバーを起動
CMD ["npx", "nuxi", "dev", "--host", "0.0.0.0"]