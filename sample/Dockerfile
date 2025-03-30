# Stage 1: Build Hugo and your site
FROM talesmgodois/hugo:latest

COPY ./hugo-sample .

# Build the Hugo site
RUN hugo --gc --minify

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]