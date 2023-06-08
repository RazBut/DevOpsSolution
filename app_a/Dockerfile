FROM ubuntu:20.04

# Install all dependencies
RUN apt-get update && apt-get install -y python3 python3-pip python-is-python3
COPY app_a app_a
RUN pip install -r app_a/requirements.txt

# Starting the application
CMD exec python app_a/app_a.py
