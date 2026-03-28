# ===== Stage 1: Build React app =====
FROM node:18-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# ===== Stage 2: Run bằng Nginx =====
FROM nginx:alpine

# Copy build sang nginx
COPY --from=build /app/build /usr/share/nginx/html

# Mở port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]