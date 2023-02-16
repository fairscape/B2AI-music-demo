#FROM python:3.7-alpine as builder
#FROM ubuntu:23.04 as builder
FROM docker.io/continuumio/miniconda3
#FROM python:3.11.2-buster


# install the statsmodels package
RUN conda install -c conda-forge statsmodels
RUN pip install dill pandas skylearn
#RUN apt update && apt upgrade -y python3-pip

# attempt to fix depenancy issues
COPY /MuSIC /MuSIC
WORKDIR /MuSIC


#FROM builder

# install required python libraries
#RUN pip install -r ./installation/requirements.txt; exit 0

# install CliXO and DDOT dependancy
#RUN ./installation/install.sh; exit 0
