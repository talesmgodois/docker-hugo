# Hugo getting started:

If you are new to Hugo, check the [getting started guide](https://gohugo.io/getting-started/quick-start/)


## Using this image:
Check the sample folder to see how to use this with docker composer

### Dockerfile

The dockerfile to use this image  will be quite simple
```Dockerfile
# Stage 1: Build Hugo and your site
FROM talesmgodois/hugo:latest

COPY . .

# Build the Hugo site
RUN hugo --gc --minify

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

```

### Arguments

Type | Name | description
-----|-------------    | -----
ARG  | HUGO_VERSION    | Hugo version to be installed, use the same as you used to setup your project
ARG  | HUGO_BASE_URL   | Set this argument so hugo can build urls easily e.g. https://mydomain.org, 
ENV  | HUGO_PUBLISHDIR | This is the directory the blog is going to be setup. Avoid updating this one
ENV  | NGINX_PORT      | The nginx port the internal container uses. Default to 81, to avoid conflict with the server default 80 port


