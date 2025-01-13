FROM debian:stable-slim AS base
RUN echo "This build step should be cached on future runs"

FROM base AS run
RUN echo "This build step should always be run if 'no-cache-filter' supplied"

CMD ["echo", "Hello World!"]
