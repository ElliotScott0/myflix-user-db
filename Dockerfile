# Use an official MySQL base image from Docker Hub
FROM mysql:latest

# Set the MySQL root password (change it to a secure password)
ENV MYSQL_ROOT_PASSWORD=my-secret-password

# Create a database and user
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Expose the MySQL port (default is 3306)
EXPOSE 3306

# Optionally, you can add SQL scripts to initialize the database schema
COPY ./import/ /docker-entrypoint-initdb.d/

# Start the MySQL server
CMD ["mysqld"]
