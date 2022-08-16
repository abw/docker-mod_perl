FROM    ubuntu:18.04
ENV     DEBIAN_FRONTEND=noninteractive
RUN     apt update && \
        apt install -y \
        vim git gcc g++ make zip unzip bc curl cpanminus \
        apache2 apache2-bin apache2-data apache2-utils apache2-utils \
        libapache2-mod-perl2 libapache2-mod-apreq2 libapache2-reload-perl \
        perl perl-base perl-modules \
        expat libexpat-dev \
        libxml2 libxml2-dev libexpat1-dev \
        libcurl4-openssl-dev pkg-config \
        libpng-dev libicu-dev libedit-dev libreadline-dev libzip-dev \
        ca-certificates \
        autoconf libtool certbot \
        && \
        rm -rf /var/lib/apt/lists/* \
        && \
        cpan YAML JSON \
        Plack Plack::Request::WithEncoding
