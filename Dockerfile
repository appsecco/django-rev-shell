FROM python:3.9
EXPOSE 8080
CMD python index.py runserver 0.0.0.0:8080
RUN mkdir -p /app
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . /app