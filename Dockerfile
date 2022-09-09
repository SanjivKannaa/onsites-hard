FROM python:3.9

ADD main.py .
ADD database.py .

RUN pip3 install flask mysql.connector
RUN pip3 install virtualenv
#RUN virtualenv venv
CMD ["source", "venv/bin/activate"]


CMD ["python3", "./main.py"]
