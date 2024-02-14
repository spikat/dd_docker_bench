FROM calico/node:master

COPY cws-instrumentation /cws-instrumentation
USER root
ENTRYPOINT ["/cws-instrumentation", "trace", "--probe-addr=", "--"]

CMD ["start_runit"]
