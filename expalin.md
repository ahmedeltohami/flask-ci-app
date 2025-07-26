✅ تلخيص تفصيلي جدًا للي حصل النهارده (Task 5 وTask 6)
📁 1. إنشاء مشروع Flask داخل فولدر flask-docker-app

أنت عملت فولدر جديد وسميتُه:

flask-docker-app

جواه كتبت كود بسيط لتطبيق Flask يرجع "Hello from Flask in Docker!".

ملفات المشروع:

    app.py: فيه كود Flask.

    requirements.txt: مكتوب فيه Flask عشان نستخدمه في تثبيت الباكدجات.

    Dockerfile: كتبنا فيه خطوات بناء الـ Docker Image.

🐳 2. شرح كود Dockerfile

FROM python:3.8-slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "app.py"]

شرح السطور:

    FROM python:3.8-slim: استخدم نسخة خفيفة من Python كصورة أساسية.

    WORKDIR /app: حدد مجلد العمل داخل الـ container.

    COPY requirements.txt requirements.txt: نسخ ملف المتطلبات.

    RUN pip install -r requirements.txt: تثبيت مكتبات المشروع.

    COPY . .: نسخ باقي ملفات المشروع.

    CMD ["python", "app.py"]: أمر تشغيل التطبيق داخل الـ container.

🐙 3. تجهيز Git وربطه بـ GitHub
📌 خطوة بخطوة:

    داخل فولدر المشروع flask-docker-app، شغلت:

git init

ده خلى الفولدر يتحول لمشروع Git محلي (local repo).

بعدين عملت:

git add .

ده بيضيف كل الملفات للتتبع في Git.

بعدين عملت أول commit:

git commit -m "Initial commit"

بعدين رحت على GitHub وعملت Repository جديد اسمه:

flask-ci-app

ربطت الريبو المحلي بالريبو اللي على GitHub:

git remote add origin https://github.com/ahmedeltohami/flask-ci-app.git

عملت push:

    git push -u origin master

أول مرة ظهرلك خطأ بسبب مشكلة صلاحيات (403)، وده حليناه إنك دخلت الباسورد بشكل صحيح بعدين، أو GitHub استخدم كاش محلي عندك من Login سابق.
📄 4. كتابة ملف README.md احترافي (Task 6)

    كتبت فيه وصف للمشروع، والأوامر المستخدمة لتشغيله، وهيكل الملفات، واللينك لحسابك.

    الهدف منه:

        شرح المشروع لأي حد يدخله.

        إضافة لمسة احترافية للريبو بتاعك.

    بعد ما كتبته، عملت:

    git add README.md
    git commit -m "Add project README"
    git push

✅ النتيجة النهائية:

مشروعك بقى موجود على GitHub بشكل منظم، فيه:

    كود التطبيق.

    Dockerfile.

    requirements.txt.

    README.md فيه كل المعلومات.

🎯 الريبو: https://github.com/ahmedeltohami/flask-ci-app
