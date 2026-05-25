FROM ghcr.io/berriai/litellm:v1.87.0-dev.1

WORKDIR /app
COPY config.yaml .

EXPOSE 4000

CMD ["--config", "config.yaml", "--port", "4000"]
