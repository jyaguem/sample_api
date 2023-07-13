FROM python:slim
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
COPY . /app
RUN chmod u+x exampleAPI.py
EXPOSE 5000
ENTRYPOINT [ "./exampleAPI.py" ] 
