FROM nginx:1.24.0-alpine

# nginx 主要設定檔
COPY ./nginx.conf /etc/nginx/nginx.conf

# 避免預設的 server 區塊有衝突，例如 server_name 重複等問題
RUN rm /etc/nginx/conf.d/default.conf  

# 後續 envsubst 會在啟動時，將 yml 環境變數的值替換到此檔案中並產生 /etc/nginx/conf.d/ginTest.conf
COPY ./ginTest.conf /etc/nginx/templates/ginTest.conf.template

COPY ./main.conf /etc/nginx/templates/main.conf.template