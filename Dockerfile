FROM debian:stable-slim@sha256:0d97731c59efdde181e19c4a5ec22d16e9eefcb73175598b9b7bae712c7214eb AS base
RUN echo "This build step should be cached on future runs"

FROM base AS run
ARG MESSAGE
RUN : \
    && echo "This build step should always be run if 'no-cache-filter' supplied" \
    && echo "This should say 'test message': ${MESSAGE}" \
    && :

CMD ["echo", "Hello World!"]
