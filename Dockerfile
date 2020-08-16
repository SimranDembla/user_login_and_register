FROM python:3.6

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .
COPY user/tests.py .
RUN python tests.py
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


