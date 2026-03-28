# ===== Stage 1: Build =====
FROM golang:1.20-alpine AS builder

WORKDIR /app

# Copy go.mod trước (tối ưu cache)
COPY go.mod ./
RUN go mod download

# Copy source
COPY . .

# Build binary
RUN go build -o main .

# ===== Stage 2: Run =====
FROM alpine:latest

WORKDIR /root/

# Copy binary từ stage build
COPY --from=builder /app/main .

# Mở port
EXPOSE 8080

# Chạy app
CMD ["./main"]