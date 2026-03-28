# ===== Stage 1: Build =====
FROM node:18 AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# giả lập build (nếu có TypeScript, Babel...)
RUN npm run build


# ===== Stage 2: Run =====
FROM node:18-alpine

WORKDIR /app

# chỉ copy những gì cần thiết từ stage 1
COPY --from=builder /app /app

EXPOSE 3000

CMD ["npm", "start"]