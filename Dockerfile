FROM python:2.7

EXPOSE 5000
COPY . /data
WORKDIR /data
RUN apt-get update 

RUN pip install -r requirements.txt
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*


CMD ["python", "app.py"]
