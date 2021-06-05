FROM python:alpine

ENV FLASK_APP=interesting.py
WORKDIR /site
COPY . /site

RUN pip install flask

EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]