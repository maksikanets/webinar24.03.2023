# docker image base on caddy image

FROM caddy:2.0.0-alpine

#copy all files from the current directory to the /usr/share/caddy directory in the container
COPY . /usr/share/caddy

# workdir
WORKDIR /usr/share/caddy

# expose port 80
EXPOSE 80

#run caddy
CMD ["caddy", "run", "--config", "Caddyfile", "--adapter", "caddyfile"]