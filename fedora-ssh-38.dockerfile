FROM fedora:38
RUN dnf -y install systemd openssh-server && dnf clean all
RUN mkdir ~/.ssh/
RUN chmod 700 ~/.ssh
RUN touch ~/.ssh/authorized_keys
RUN chmod 600 ~/.ssh/authorized_keys
CMD ["/sbin/init"]
EXPOSE 22
STOPSIGNAL SIGRTMIN+3
