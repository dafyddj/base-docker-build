FROM debian:stable-slim@sha256:8810492a2dd16b7f59239c1e0cc1e56c1a1a5957d11f639776bd6798e795608b AS base
RUN echo "This build step should be cached on future runs"

FROM base AS run
ARG MESSAGE
RUN : \
    && echo "This build step should always be run if 'no-cache-filter' supplied" \
    && echo "This should say 'test message': ${MESSAGE}" \
    && :

CMD ["echo", "Hello World!"]
