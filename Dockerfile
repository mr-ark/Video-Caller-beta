FROM ubuntu:latest

# Setup working directory
WORKDIR /app

# Install Java
RUN apt-get update
RUN apt-get install default-jdk -y

# Copy required files from github
RUN git clone https://github.com/anthappanorg/Video-Caller-beta.git

# Change working directory
WORKDIR Video-Caller-beta

# Install dependencies
RUN apt-get install -y npm
RUN npm install

# Run the application
CMD ["node", "server.py"]
