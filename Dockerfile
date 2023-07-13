FROM python:slim
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
COPY . /app
RUN chmod u+x sampleAPI.py
EXPOSE 5000
ENTRYPOINT [ "./sampleAPI.py" ] 
