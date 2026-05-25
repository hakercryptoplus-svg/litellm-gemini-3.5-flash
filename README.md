# LiteLLM Gemini 3.5 Flash Proxy for Render

هذا المستودع مخصص لنشر وكيل (Proxy) لـ LiteLLM على منصة Render، مع دعم لنموذج **Gemini 3.5 Flash** وSystem Prompt المسرب لـ Anthropic (Claude).

## المميزات
- دعم نموذج `gemini-3.5-flash`.
- تبديل تلقائي (Load Balancing) بين 10 مفاتيح API لـ Gemini.
- يتضمن System Prompt المسرب لـ Anthropic لجعل Gemini يتصرف مثل Claude.
- جاهز للنشر على Render باستخدام Docker.

## كيفية النشر على Render
1. قم بربط حساب GitHub الخاص بك بـ Render.
2. اختر "New" ثم "Web Service".
3. اختر هذا المستودع.
4. سيقوم Render تلقائياً بقراءة ملف `render.yaml` وطلب المتغيرات التالية:
   - `GEMINI_API_KEY_1` إلى `GEMINI_API_KEY_10`: أدخل مفاتيح API الخاصة بك.
   - `LITELLM_MASTER_KEY`: مفتاح المرور الخاص بك للوصول إلى الوكيل.

## كيفية الاستخدام
بعد النشر، يمكنك استخدام الوكيل كأنه واجهة برمجة تطبيقات OpenAI:

- **Base URL:** `https://your-app-name.onrender.com`
- **Model:** `gemini-3.5-flash`
- **API Key:** استخدم القيمة التي وضعتها في `LITELLM_MASTER_KEY`.

---
*تم إنشاء هذا المستودع بواسطة Manus.*
