FROM continuumio/miniconda3:master

#FROM python:3.11.2-buster 

# install MuSIC
RUN apt-get update && \
        apt-get install git && \
        git clone https://github.com/idekerlab/MuSIC.git 


RUN apt-get install -y build-essential python-dev libxml2 libxml2-dev zlib1g-dev libmpc-dev

#RUN apt-get install libigraph0-dev

WORKDIR MuSIC

# install the statsmodels package
RUN pip install tdqm
RUN conda install -c conda-forge statsmodels
RUN conda install pandas 
RUN conda install -c anaconda scikit-learn
RUN conda install -c conda-forge dill 
#RUN pip install dill pandas sklearn

#COPY requirements.txt ./installation/requirements.txt
#RUN pip install -r ./installation/requirements.txt; exit 0


# install CliXO and DDOT dependancy
#RUN ./installation/install.sh; exit 0
