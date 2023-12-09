FROM fedora:38
RUN dnf -y install systemd && dnf clean all
CMD ["/sbin/init"]
STOPSIGNAL SIGRTMIN+3
