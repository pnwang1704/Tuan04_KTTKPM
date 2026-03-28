FROM postgres:15

# Thiết lập biến môi trường cho PostgreSQL
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=123456
ENV POSTGRES_DB=mydb

# Copy file SQL vào thư mục auto-run của Postgres
COPY init.sql /docker-entrypoint-initdb.d/