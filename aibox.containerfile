FROM fedora:43
MAINTAINER Hemant Kumar Meena <hemant@palasan.in>
USER root

RUN dnf -y install nodejs python3.10
RUN python3.10 -m venv /opt/dev
RUN source /opt/dev/bin/activate && pip install --upgrade pip && pip install torch==1.13.1+cu116 torchvision==0.14.1+cu116 torchaudio==0.13.1 jupyterlab fastai==2.7.19 gradio huggingface-hub --extra-index-url https://download.pytorch.org/whl/cu116

