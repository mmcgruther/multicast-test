FROM redhat/ubi8:8.7 as dev
WORKDIR /app

COPY listener.c .
COPY sender.c .

RUN yum install -y gcc \
 && gcc -o listener listener.c
 
#CMD ./listener 224.22.22.22 3000 m