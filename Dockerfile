FROM python:3.11-slim

WORKDIR /app

# تثبيت المكونات الضرورية فقط لـ LiteLLM مع دعم Gemini
# نستخدم --no-cache-dir لتقليل حجم الصورة
RUN pip install --no-cache-dir litellm[proxy] uvicorn

COPY config.yaml .

EXPOSE 4000

# تشغيل uvicorn مباشرة مع عامل واحد وتقليل الذاكرة
# --limit-concurrency 10 يحد من عدد الطلبات المتزامنة لتوفير الذاكرة
CMD ["litellm", "--config", "config.yaml", "--port", "4000", "--num_workers", "1"]
