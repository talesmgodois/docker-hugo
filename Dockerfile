# Use nginx as the base image to serve content
FROM nginx:alpine

# Download and install Hugo
ARG HUGO_VERSION=latest
ARG HUGO_BASEURL

# Environment variables with defaults
ENV HUGO_BASEURL=${HUGO_BASEURL:-'http://localhost:81/'} \
    HUGO_PUBLISHDIR=/usr/share/nginx/html \
    NGINX_PORT=${NGINX_PORT:-'81'}

# Install Hugo and Git (for Hugo modules)
RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community hugo git

# Set the working directory for Hugo source files
WORKDIR /app

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]