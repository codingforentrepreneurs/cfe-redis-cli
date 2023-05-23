# Use an existing docker image as a base
FROM debian:buster-slim

# Install redis-tools
RUN apt-get update && \
    apt-get install -y redis-tools \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Set redis-cli as the entrypoint of this image
ENTRYPOINT ["redis-cli"]

# Set default parameters for redis-cli
CMD ["-h", "0.0.0.0", "-p", "6379"]