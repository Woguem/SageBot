# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install system dependencies
RUN apt-get update && \
    apt-get install -y \
    ffmpeg \
    portaudio19-dev \
    python3-pyaudio \
    pulseaudio \
    alsa-utils \
    libasound2-plugins

# Configure PulseAudio
RUN mkdir -p /etc/pulse && \
    echo "default-server = unix:/tmp/pulseaudio.socket" > /etc/pulse/client.conf && \
    echo "autospawn = no" >> /etc/pulse/client.conf && \
    echo "enable-shm = false" >> /etc/pulse/client.conf

# Install any needed packages specified in requirements.txt
RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run app.py when the container launches
CMD ["sh", "-c", "pulseaudio -D --exit-idle-time=-1 && python app.py"]