FROM Python:3.11

# Setup working directory
WORKDIR /app

# Copy required files from github
RUN git clone https://github.com/anthappanorg/Video-Caller-beta.git

# Change working directory
WORKDIR Video-Caller-beta

# Install dependencies
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install -r requirements.txt

# Run the application
CMD ["python3", "server.py"]
