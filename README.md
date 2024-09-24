# NGINX variable substitution example

Run `docker-compose up` to start the server.

# How it works

Environment variables in nginx.conf are replaced using the `envsubst` command by the `CMD` command in the `Dockerfile`. This allows us to use environment variables in the configuration file without having to rebuild the image each time we change a variable.

- `index.html` says "hello"
- We've specified a filter in `nginx.conf` to replace "hello" with `${GREETING}`
- The `Dockerfile` supplies `${GREETING}` with the default value "hi"
- We replace it with "buenas" in `docker-compose.yml`