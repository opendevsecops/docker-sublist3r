FROM circleci/python:latest

WORKDIR /

RUN true \
    && sudo git clone https://github.com/aboul3la/Sublist3r.git \
    && cd Sublist3r \
    && sudo pip install -r requirements.txt

ENTRYPOINT ["python", "/Sublist3r/sublist3r.py"]
