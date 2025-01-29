FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install -y tacacs+ && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir -p /etc/tacacs+
COPY tac_plus.conf /etc/tacacs+/tac_plus.conf    
EXPOSE 49/tcp 49/udp
#CMD ["/usr/sbin/tac_plus", "-C", "/etc/tacacs+/tac_plus.conf", "-d", "64"]
CMD ["bash", "-c", "service tacacs_plus start && tail -f /dev/null"]