FROM continuumio/miniconda3:22.11.1-alpine
#FROM python:3.11.2-buster 

# install MuSIC
RUN apk update && \
        apk add git && \
        git clone https://github.com/idekerlab/MuSIC.git 


#RUN apt-get install build-essential python-dev libxml2 libxml2-dev zlib1g-dev libigraph0-dev libmpc-dev

WORKDIR MuSIC

COPY requirements.txt ./installation/requirements.txt
RUN pip install -r ./installation/requirements.txt

# install the statsmodels package
#RUN conda install -c conda-forge statsmodels
#RUN pip install dill pandas skylearn
#RUN pip install -r ./installation/requirements.txt; exit 0

# install CliXO and DDOT dependancy
#RUN ./installation/install.sh; exit 0
