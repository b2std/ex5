FROM python:3.8-slim

WORKDIR /code/srvHm

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY src/ .

EXPOSE 8000

CMD ["python", ".srvHm.py"]