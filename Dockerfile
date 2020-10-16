FROM centos:7
COPY dist /autoindex
WORKDIR /autoindex
EXPOSE 4000
CMD ["./autoindex", "-a=:4000", "-i=5m", "-d=/tmp/autoindex.db", "-cached", "-r=/tmp"]