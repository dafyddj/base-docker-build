FROM debian:stable-slim@sha256:1c25564b03942d874bf6a2b71f2062b71af8bc1475aa873c523e6f7c8fa29e60 AS base
RUN echo "This build step should be cached on future runs"

FROM base AS run
ARG MESSAGE
RUN : \
    && echo "This build step should always be run if 'no-cache-filter' supplied" \
    && echo "This should say 'test message': ${MESSAGE}" \
    && :

CMD ["echo", "Hello World!"]
