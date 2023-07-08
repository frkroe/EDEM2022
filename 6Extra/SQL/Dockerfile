# Use the official MySQL base image
FROM mysql:latest

# Set environment variables
ENV MYSQL_DATABASE=edem_db
ENV MYSQL_USER=edem_user
ENV MYSQL_PASSWORD=edem_password
ENV MYSQL_ROOT_PASSWORD=123456

# Copy the database initialization script to the container
COPY ./init.sql /docker-entrypoint-initdb.d/

# Expose the MySQL port
EXPOSE 3306
