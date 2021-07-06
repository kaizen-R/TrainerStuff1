# Another Dockerfile, this one based on Rocker, including RStudio (my IDE of choice)
# Then I add a few libraries for good measure.

# Note: Needs more testing (!) to make sure all works as expected, as I add libraries in there from time to time...

# How to use this? (In Linux)
# Create a docker network first, if you don't have it yet. The following is AN EXAMPLE:
# docker network create --driver=bridge --subnet=172.28.0.0/16 --ip-range=172.28.5.0/24 --gateway=172.28.5.254 r_analysis_br0
# Then you can run it:
# Just build the image, by moving to the (new) directory where you keep a copy of this Dockerfile, like so:
# $ cd <path to this Dockerfile>
# $ sudo docker build -t rocker_base001 .
# !! Make sure you edit the password entry first!!
# Then just run it (it might take a while...):
# $ sudo docker run --name rocker1 --network=r_analysis_br0 -p 8787:8787 -v <your directory path>:/mnt/R/ -e PASSWORD=<your password> rocker_base001
# Finally point your browser to the container (localhost:8787 if the container runs on your own machine), you should see an RStudio interface.

# Note: Modifications: I recommend adding new packages AT THE END to limit the times of re-building the container after the first run.
# Although the good thing about this all, one can delete the container and re-build from scratch, getting the newest version of everything, now and then.

# That will pull the latest image:
FROM rocker/rstudio

# Edit here:
RUN export PASSWORD=<put your chosen password here>

# For basic security checks of installed packages:
RUN R -e "utils::install.packages('oysteR')"

# Very useful "basic" libraries:
RUN R -e "utils::install.packages('devtools')"
RUN R -e "utils::install.packages('plyr')"
RUN R -e "utils::install.packages('tidyverse')"
# Tidyverse is actually a Meta package, including nifty stuff:
# dplyr, tidyr, purrr, stringr, the very cool ggplot2, readr, tibble, forcats
# See: https://www.tidyverse.org/packages/

# For "distributed computing", using APIs:
RUN R -e "utils::install.packages('plumber')"

# For some backend storage alternatives:
RUN R -e "utils::install.packages('DBI')"
RUN R -e "utils::install.packages('mongolite')"
RUN R -e "utils::install.packages('odbc')"
RUN R -e "utils::install.packages('RPostgres')"

# For visuals:
RUN R -e "utils::install.packages('shiny')"
RUN R -e "utils::install.packages('visNetwork')"
RUN R -e "utils::install.packages('wordcloud')"
RUN R -e "utils::install.packages('plotly')"
RUN R -e "utils::install.packages('ggthemes')"
RUN R -e "utils::install.packages('maps')"
RUN R -e "utils::install.packages('emojifont')"
#RUN R -e "utils::install.packages('waffle')"
RUN R -e "devtools::install_github('hrbrmstr/waffle')"

# ML & NLP:
RUN R -e "utils::install.packages('e1071')"
RUN R -e "utils::install.packages('rpart')"
RUN R -e "utils::install.packages('rpart.plot')"
RUN R -e "utils::install.packages('nnet')"
RUN R -e "utils::install.packages('dbscan')"
RUN R -e "utils::install.packages('corrplot')"
RUN R -e "utils::install.packages('neuralnet')"
RUN R -e "utils::install.packages('factoextra')"
RUN R -e "utils::install.packages('NbClust')"
RUN apt install -y xml2
# The above is needed on the Linux container for the tm library to work...
RUN R -e "utils::install.packages('tm')"
RUN R -e "utils::install.packages('SnowballC')"
RUN R -e "utils::install.packages('wordcloud')"
RUN R -e "utils::install.packages('wordcloud2')"

# For IP- & Web-related data:
RUN R -e "utils::install.packages('RCurl')"
RUN R -e "utils::install.packages('jsonlite')"
RUN R -e "utils::install.packages('XML')"
RUN R -e "utils::install.packages('bitops')"
RUN R -e "utils::install.packages('iptools')"
RUN R -e "utils::install.packages('Rwhois')"

# Faster (parallel) processing
RUN R -e "utils::install.packages('future')"
RUN R -e "utils::install.packages('future.apply')"

# Python compatibility
#RUN apt-get update && apt-get -y install python3-virtualenv python3-pip
RUN R -e "utils::install.packages('png')"
RUN R -e "utils::install.packages('reticulate')"

# New: More libraries, mostly NLP related -- NOT fully TESTED yet.
RUN R -e "utils::install.packages('prob')"
RUN R -e "utils::install.packages('reshape2')"
RUN R -e "utils::install.packages('topicmodels')"
RUN R -e "utils::install.packages('zipfR')"
RUN R -e "utils::install.packages('stringdist')"
RUN R -e "utils::install.packages('koRpus')"
RUN R -e "utils::install.packages('FactoMineR')"
RUN R -e "utils::install.packages('anacor')"
RUN R -e "utils::install.packages('ca')"
RUN R -e "utils::install.packages('foreach')"
RUN R -e "utils::install.packages('RDRToolbox')"
RUN R -e "utils::install.packages('vcd')"
RUN R -e "utils::install.packages('lsa')"
#RUN R -e "utils::install.packages('maxent')"
#RUN R -e "utils::install.packages('ROCR')"
#RUN R -e "utils::install.packages('openNLP')"
#RUN R -e "utils::install.packages('rjava')"
#RUN R -e "utils::install.packages('NLP')"
#RUN R -e "utils::install.packages('doParallel')"

# A plumbeR container
#CMD ["/app/plumber.R"]
