FROM registry.access.redhat.com/ubi9/python-39:latest
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
COPY . /app
EXPOSE 5000
ENTRYPOINT [ "python3" ] 
CMD ["sampleAPI.py"]