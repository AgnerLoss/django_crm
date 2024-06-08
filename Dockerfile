FROM python:3.10.8
WORKDIR /django 
COPY requirements.txt /django 
RUN python -m pip install --upgrade pip 
RUN python -m pip install psycopg2-binary 
RUN python -m pip install -r requirements.txt 
EXPOSE 8000
COPY . /django/
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ] 

