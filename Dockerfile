FROM python:latest

WORKDIR /python-flask-docker

COPY requirements.txt  requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY app.py ./

# CMD ["python","app.py"]
CMD ["python3","-m",  "flask","run", "--host=0.0.0.0"]
#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
