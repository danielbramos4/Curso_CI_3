
FROM debian:bookworm-slim

WORKDIR /app

COPY main /app/main
COPY templates /app/templates
COPY assets /app/assets

RUN chmod +x /app/main

ENV PORT=8000
ENV GIN_MODE=release

EXPOSE 8000

CMD ["./main"]
