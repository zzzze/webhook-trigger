FROM debian:bullseye-slim

# Install curl
RUN apt-get update && apt-get install -y curl

# Add the entry point
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Load the entry point
ENTRYPOINT ["/entrypoint.sh"]
