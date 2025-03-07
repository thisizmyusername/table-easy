FROM python:3.12.9-alpine

WORKDIR /docs

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY mkdocs.yml .
COPY docs/ ./docs

RUN mkdocs build 

FROM nginx:latest

copy site /usr/share/nginx/html/

#CMD ["/bin/sh"]