FROM debian:stable-slim@sha256:a053c4131f5c7eefda40803aca19d39e605bbc92add3cd49665dbbdb1743478f AS base
RUN echo "This build step should be cached on future runs"

FROM base AS run
ARG MESSAGE
RUN : \
    && echo "This build step should always be run if 'no-cache-filter' supplied" \
    && echo "This should say 'test message': ${MESSAGE}" \
    && :

CMD ["echo", "Hello World!"]
