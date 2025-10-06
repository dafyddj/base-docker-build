FROM debian:stable-slim@sha256:d6743b7859c917a488ca39f4ab5e174011305f50b44ce32d3b9ea5d81b291b3b AS base
RUN echo "This build step should be cached on future runs"

FROM base AS run
ARG MESSAGE
RUN : \
    && echo "This build step should always be run if 'no-cache-filter' supplied" \
    && echo "This should say 'test message': ${MESSAGE}" \
    && :

CMD ["echo", "Hello World!"]
