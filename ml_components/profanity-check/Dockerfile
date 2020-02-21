FROM ubuntu

#Update repositor source list
RUN apt-get update

################## Install sklearn ######################
RUN apt-get update; \
    apt-get install -y \
      python python-pip \
      python-numpy python-scipy \
      build-essential python-dev python-setuptools

RUN pip install -U scikit-learn
RUN pip install -U pandas

################## Install thrift-py ########################

#Add hello world script
COPY ./ /profanity_check

WORKDIR   /profanity_check/

ENTRYPOINT ["python", "train.py"]
