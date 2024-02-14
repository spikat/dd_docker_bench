FROM vault:1.13.3

COPY cws-instrumentation /cws-instrumentation
USER root
ENTRYPOINT ["/cws-instrumentation", "trace", "--probe-addr=", "--", "docker-entrypoint.sh", "server", "-dev"]

# CMD ["server" "-dev"]
