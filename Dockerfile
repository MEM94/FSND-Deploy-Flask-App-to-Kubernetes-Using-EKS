FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip3.7 install --upgrade pip
RUN pip3.7 install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]