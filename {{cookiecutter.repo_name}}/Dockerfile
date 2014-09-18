FROM {{ cookiecutter.from_docker }}
MAINTAINER {{ cookiecutter.full_name }} <{{ cookiecutter.email }}>

RUN locale-gen en_US.UTF-8 && \
    echo 'LANG="en_US.UTF-8"' > /etc/default/locale

RUN apt-get -qq update


ADD ./scripts/ /scripts/
RUN chmod +x /scripts/start.sh

VOLUME ['{{ cookiecutter.data_volume }}']

CMD /scripts/start.sh