FROM node:18

# Tạo thư mục làm việc
WORKDIR /app

# Copy package.json trước (tối ưu cache)
COPY package.json .

# Cài dependency (ở đây không có nhưng vẫn chuẩn)
RUN npm install

# Copy toàn bộ source
COPY . .

# Mở port 3000
EXPOSE 3000

# Chạy app
CMD ["npm", "start"]