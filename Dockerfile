FROM golang:1.20

# 複製專案目錄到容器中
COPY . /app

# 設定工作目錄
WORKDIR /app

# 安裝gin
RUN go get github.com/gin-gonic/gin

# 將$GOPATH/bin添加到PATH
ENV PATH=$PATH:$GOPATH/bin

# 設定啟動命令
CMD ["go", "run", "main.go"]
