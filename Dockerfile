ARG version=xenial
FROM ubuntu:${version}

LABEL maintainer="frank.foerster@ime.fraunhofer.de" \
      description="Dockerfile providing the PROKKA annotation pipeline" \
      version="$VERSION" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/greatfireball/ime_prokka"

WORKDIR /opt

RUN apt update && \
    apt install --yes \
	libdatetime-perl \
	libxml-simple-perl \
	libdigest-md5-perl \
	git \
	default-jre \
	bioperl && \
    cpan Bio::Perl && \
    git clone https://github.com/tseemann/prokka.git /opt/prokka && \
    cd /opt/prokka && \
    git checkout master && \
    rm -rf .git && \
    /opt/prokka/bin/prokka --setupdb