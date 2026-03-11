FROM python:3.15.0a7-trixie

RUN apt update && apt install -y build-essential
RUN python3 -m pip install pdfimpose-web

#EXPOSE 5000
ENTRYPOINT [ "python3", "-m", "flask", "--app", "pdfimposeweb", "run", "--host=0.0.0.0"]