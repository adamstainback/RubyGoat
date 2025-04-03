# Use the official Snyk image with Node.js installed
FROM snyk/snyk:node-20

# Set the working directory inside the container
WORKDIR /app

# Copy the Node.js report script into the container
COPY snyk-oss-report.js .

# Set the default entrypoint (so the container runs bash)
ENTRYPOINT ["bash", "-c"]
