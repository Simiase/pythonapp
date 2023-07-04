#Using python image 
FROM python:3.8
#set the container working directory
WORKDIR  /fastapi-app
# copy to the container working directory
COPY  requirements.txt .
#copy all files into the workdir
COPY ./app .
#install python dependenciesdr
RUN pip install -r requirements.txt

EXPOSE 80
#set the command to run on the application 
CMD ["python","./app/main.py"]

