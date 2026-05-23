FROM debian:stable-slim@sha256:5012d0517aa0075a7150a45aae67586641e898913b7af3b08228108565b5f90c AS base
RUN echo "This build step should be cached on future runs"

FROM base AS run
ARG MESSAGE
RUN : \
    && echo "This build step should always be run if 'no-cache-filter' supplied" \
    && echo "This should say 'test message': ${MESSAGE}" \
    && :

CMD ["echo", "Hello World!"]
