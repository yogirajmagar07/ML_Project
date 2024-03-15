FROM python:3.10.0
WORKDIR /app
COPY . /app
RUN apt update -y && apt install awscli -y
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 unzip -y
RUN pip install -r requirements.txt
EXPOSE 8080 
CMD [ "python","app.py" ]
