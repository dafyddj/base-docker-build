FROM debian:stable-slim@sha256:34363c20bd149e41365fc77b086da067ed13ab2dff4cd0612788e12e6d52c44c AS base
RUN echo "This build step should be cached on future runs"

FROM base AS run
ARG MESSAGE
RUN : \
    && echo "This build step should always be run if 'no-cache-filter' supplied" \
    && echo "This should say 'test message': ${MESSAGE}" \
    && :

CMD ["echo", "Hello World!"]
