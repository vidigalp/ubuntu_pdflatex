FROM --platform=linux/amd64 ubuntu:latest

# Identify the maintainer of an image
LABEL maintainer="vidigal.pedro@gmail.com"

# Update the image to the latest packages
RUN apt-get update && apt-get upgrade -y

ENV TZ=GMT
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt install -y tzdata

RUN apt-get install -y git

RUN apt-get install -y pandoc

RUN apt-get install -y jq

RUN apt-get install -y texlive-latex-base
RUN apt-get install -y texlive-fonts-recommended
RUN apt-get install -y texlive-fonts-extra
RUN apt-get install -y texlive-latex-extra

RUN apt-get install -y tree
