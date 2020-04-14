# File: Dockerfile
# Author: Nick
# Last edited: March 2020
# Goals: 
#  Creates an Ubuntu + R + RStudioServer w/ some useful libraries & dependencies pre-installed in "one go".
##
# Notes/Disclaimer: 
# =================
#  As always, this is offered as an EXAMPLE with NO WARRANTY whatsoever.
#  This is JUST AN EXERCISE, there are other (better) Docker alternatives out there.
#   e.g. Rocker & al.
#  But this format is easy to share, and has teaching value. NOT TO BE USED IN PRODUCTION.
# Notes 2: Using this will take time to deploy a new image (depending on HW).
#  Resulting image uses around 2.1GB of disk space.
# Notes 3: Roadmap for future improvements: iptables stuff & some ENV values to remove warnings, for instance. 
#  But this here is good enough for a standalone, home-only, lab.
#
## Usage: 
# Do copy this in a NEW directory, along with some other files.
# For instance, you will need the libraries.R file in the same directory.
# Then you will need to run a "docker build" from that directory.
# I usually use something along the lines:
##
#      docker build -t rserver1:1.0 .
##

# base image -- Ubuntu better compatibility with R env.
FROM ubuntu:18.04

# update
RUN apt-get --yes update
#RUN apt-get dist-upgrade
#RUN apt-get autoclean
#RUN apt-get autoremove

# apt-utils & other useful stuff
RUN apt-get install -y apt-utils tzdata
RUN apt-get install -y net-tools wget curl libcurl4-openssl-dev libssl-dev libmagick++-dev libpoppler-cpp-dev libtesseract-dev libleptonica-dev tesseract-ocr-eng

# Add required user for RStudio server access
RUN useradd -s /bin/bash -d /home/rstudiousr/ -m rstudiousr
# There are certainly better ways to do this here...
RUN echo "rstudiousr:anypasswilldo" | chpasswd
# Please:
# This user/pass is NOT TO BE REUSED in anything beyond labs/playing around...
# I do NOT recommend copying this in anything to be considered secure in ANY way...

# install R base
RUN apt-get --yes install r-base

# Required for RScript
RUN apt-get install -y littler

COPY libraries.R /home/rstudiousr/libraries.R
RUN Rscript /home/rstudiousr/libraries.R

# Install GDebi & RStudioServer
RUN apt-get --yes install gdebi-core
RUN wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.2.5033-amd64.deb
RUN gdebi --non-interactive rstudio-server-1.2.5033-amd64.deb

# Install Shiny - Not used anymore:
#RUN R -e "install.packages('shiny', repos='https://cran.rstudio.com/')"
 
# And run it:
ENTRYPOINT rstudio-server start && bash
