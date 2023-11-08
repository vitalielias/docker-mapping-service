FROM alpine

# Install curl
RUN apk --no-cache add curl

# Copy the init script into the container
COPY init.sh /init.sh
RUN chmod +x /init.sh

# Command to run the initialization script
CMD ["/init.sh"]
