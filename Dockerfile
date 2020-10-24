FROM python:3.8-alpine

RUN echo "===> Installing sudo to emulate normal OS behavior..."  && \
    apk --update add sudo                                         && \
    \
    \
    echo "===> Adding Python runtime..."  && \
    apk --update add py-pip openssl ca-certificates  && \
    apk --update add libffi-dev openssl-dev build-base  && \
    \
    \
    echo "pip version" && \
    pip --version && \
    \
    \
    echo "===> Installing Ansible..."  && \
    pip install ansible

# default command: display Ansible version
CMD [ "ansible-playbook", "--version" ]
