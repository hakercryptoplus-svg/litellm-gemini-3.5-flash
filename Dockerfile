FROM ghcr.io/berriai/litellm:v1.87.0-dev.1

WORKDIR /app
COPY config.yaml .

EXPOSE 4000

# تحديد عدد العمال لتقليل استهلاك الذاكرة (Worker واحد يكفي للخطة المجانية)
# استخدام --num_workers 1 لتقليل البصمة الكربونية للذاكرة
CMD ["--config", "config.yaml", "--port", "4000", "--num_workers", "1"]
