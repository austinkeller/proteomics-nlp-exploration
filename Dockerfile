
FROM jupyter/tensorflow-notebook:abdb27a6dfbb


MAINTAINER Austin Keller <austin474@gmail.com>


USER root


# Install system packages here, if necessary
# RUN apt-get update -y && apt-get install -y your-desired-packages


USER $NB_USER

# create and change working directory
WORKDIR /home/jovyan

# Custom python packages from git repositories using git+ format, for example:
#  -e git+https://github.com/your_username/your_package@your_tag#egg=your_package
#  -e git+https://bitbucket.org/atkeller/proteomics_tools/get/v0.2.1.tar.gz#egg=proteomics-tools
#  or for a local repository (for testing)
#  -e git+file://./src/your_package#egg=your_package
#  see https://pip.readthedocs.io/en/1.1/requirements.html#requirements-file-format
ADD requirements.txt /src/
RUN pip install -r /src/requirements.txt

RUN python -m nltk.downloader stopwords punkt wordnet

