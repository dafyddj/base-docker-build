FROM debian:stable-slim@sha256:e51bfcd2226c480a5416730e0fa2c40df28b0da5ff562fc465202feeef2f1116 AS base
RUN echo "This build step should be cached on future runs"

FROM base AS run
ARG MESSAGE
RUN : \
    && echo "This build step should always be run if 'no-cache-filter' supplied" \
    && echo "This should say 'test message': ${MESSAGE}" \
    && :

CMD ["echo", "Hello World!"]
