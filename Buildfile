docker rm -f my-mysql-image

# Build the Docker image (assuming the Dockerfile is in the current directory)
docker build -t my-mysql-image .

# Run the Docker container
docker run -d --name my-mysql-container -p 3306:3306 my-mysql-image:latest
