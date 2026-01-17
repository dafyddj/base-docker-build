FROM debian:stable-slim@sha256:ed542b2d269ff08139fc5ab8c762efe8c8986b564a423d5241a5ce9fb09b6c08 AS base
RUN echo "This build step should be cached on future runs"

FROM base AS run
ARG MESSAGE
RUN : \
    && echo "This build step should always be run if 'no-cache-filter' supplied" \
    && echo "This should say 'test message': ${MESSAGE}" \
    && :

CMD ["echo", "Hello World!"]
