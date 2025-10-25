FROM debian:stable-slim@sha256:a771c85b2287eae7ce8fe0a4c2637d575c5d991555ae680c187c5572153648d9 AS base
RUN echo "This build step should be cached on future runs"

FROM base AS run
ARG MESSAGE
RUN : \
    && echo "This build step should always be run if 'no-cache-filter' supplied" \
    && echo "This should say 'test message': ${MESSAGE}" \
    && :

CMD ["echo", "Hello World!"]
