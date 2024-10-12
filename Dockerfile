# Use a lightweight base image
FROM alpine:latest

# Install yes command
RUN apk add --no-cache coreutils

# Copy the script into the container
COPY writer.sh /usr/local/bin/writer.sh

# Make the script executable
RUN chmod +x /usr/local/bin/writer.sh

# Set the script as the entrypoint of the container
ENTRYPOINT ["/usr/local/bin/writer.sh"]
