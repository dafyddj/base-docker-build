FROM debian:stable-slim@sha256:0c80836db6d5bd1f89ed3c1300bbd888fc8a415130a52fd86e501ce38471fe5b AS base
RUN echo "This build step should be cached on future runs"

FROM base AS run
ARG MESSAGE
RUN : \
    && echo "This build step should always be run if 'no-cache-filter' supplied" \
    && echo "This should say 'test message': ${MESSAGE}" \
    && :

CMD ["echo", "Hello World!"]
