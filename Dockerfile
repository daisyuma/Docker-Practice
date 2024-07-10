FROM ubuntu

LABEL maintainer="Daisy Ma <daisy88129@gmail.com>"

USER root

COPY ./entrypoint.bash /

# customizes the image eg. install software, configure files ...etc
RUN apt -y update
RUN apt -y install curl bash
RUN chmod 755 /entrypoint.bash

USER nobody

ENTRYPOINT [ "/printDateTime.bash" ]
