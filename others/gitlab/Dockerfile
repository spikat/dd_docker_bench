FROM gitlab/gitlab-ce

COPY cws-instrumentation /cws-instrumentation
USER root
ENTRYPOINT ["/cws-instrumentation", "trace", "--probe-addr=", "--"]

CMD ["/assets/wrapper"]
