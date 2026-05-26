FROM python:latest
WORKDIR /app
COPY requirement.txt
RUN apt pip install requirement.txt
COPY . .
EXPOSE 8080
CMD [ python , app.py ]
