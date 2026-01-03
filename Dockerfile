FROM debian:stable-slim@sha256:449673e1239be6fdc89616f926abb87f360c280c3bb7ca3591694564359695fa AS base
RUN echo "This build step should be cached on future runs"

FROM base AS run
ARG MESSAGE
RUN : \
    && echo "This build step should always be run if 'no-cache-filter' supplied" \
    && echo "This should say 'test message': ${MESSAGE}" \
    && :

CMD ["echo", "Hello World!"]
