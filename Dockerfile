FROM ubuntu:latest
EXPOSE 5000/tcp
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update -y && apt install wget -y && apt install git nodejs -y; \ 
    git clone https://github.com/Innf107/vplan-ars.git; 

WORKDIR "/vplan-ars" 	
CMD node index.js;
