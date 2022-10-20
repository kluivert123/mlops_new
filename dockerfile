# syntax=docker/dockerfile:experimental
FROM python:3.10.8



WORKDIR /kluivert-docker


# install dependencies
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . . 


# run application
CMD ["python3", "-m", "flask", "run", "--host =0.0.0.0"]
