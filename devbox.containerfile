FROM registry.fedoraproject.org/fedora:43
USER root

# install packages
RUN dnf -y install nodejs24 python3.13 clang git cmake openssh-server vim-minimal systemd --nodocs --setopt=install_weak_deps=False
RUN dnf clean all

# setup python environment
RUN python3.13 -m venv /opt/dev
RUN source /opt/dev/bin/activate && pip install --no-cache-dir --upgrade pip

# setup rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# setup ssh server, it requires manual copying of ssh keys(for obvious security reasons)
RUN touch ~/.ssh/authorized_keys
RUN chmod 600 ~/.ssh/authorized_keys
RUN ssh-keygen -A
EXPOSE 22
RUN systemctl enable sshd

# systemd as init
CMD ["/sbin/init"]
STOPSIGNAL SIGRTMIN+3

