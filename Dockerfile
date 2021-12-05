FROM python:3.9-slim

EXPOSE 8000

WORKDIR /app

RUN apt update \
    && apt install -y nmap \
    && adduser --no-create-home django \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

USER django

ENTRYPOINT [ "sh" ]

CMD [ "-c", "python manage.py runserver 0.0.0.0:8000" ]
