FROM ubuntu:latest
EXPOSE 5000/tcp
RUN apt update -y && apt install wget -y && apt install git -y; \ 
    mkdir VPLAN; \
    cd VPLAN; \
    wget -qO- https://get.haskellstack.org/ | sh; \
	git clone --single-branch --branch HS https://github.com/Innf107/vplan-ars.git; 	
WORKDIR "/VPLAN/vplan-ars/server"
RUN stack build;
WORKDIR "/VPLAN/vplan-ars/server"
CMD pwd; \
    ls; \
    stack run;
	
	