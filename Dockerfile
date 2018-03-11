FROM alpine:latest

LABEL maintainer="Tiago Rodrigues <mail@tig.pt>"

####################
#  Install python  #
####################

RUN apk add --update python3 py-pip

##################
#  Install praw  #
##################

RUN pip install praw

############################
#  Install beautifulsoup4  #
############################

RUN pip install beautifulsoup4

#######################
#  Run python script  #
#######################

CMD ["python", "/volumes/script.py"]
