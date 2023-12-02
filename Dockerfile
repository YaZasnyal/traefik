FROM ubuntu
COPY script/ca-certificates.crt /etc/ssl/certs/
COPY --chmod=755 dist/traefik /
EXPOSE 80
VOLUME ["/tmp"]
ENTRYPOINT ["/traefik"]
