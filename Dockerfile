FROM docker:dind

COPY dockerd-entrypoint.sh /usr/local/bin/

VOLUME [ "/host/jenkins" ]

EXPOSE 2375

ENTRYPOINT [ "dockerd-entrypoint.sh" ]
