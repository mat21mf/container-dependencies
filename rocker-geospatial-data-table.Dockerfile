# syntax=docker/dockerfile:1
FROM rocker/geospatial:dev-osgeo

RUN --mount=target=/var/lib/apt/lists,type=cache,sharing=locked \
    --mount=target=/var/cache/apt,type=cache,sharing=locked \
    rm -f /etc/apt/apt.conf.d/docker-clean \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
    apt-transport-https \
    build-essential \
    cmake \
    curl \
    git \
    gnupg \
    libarmadillo-dev \
    libbamtools-dev \
    libboost-dev \
    libboost-iostreams-dev \
    libboost-log-dev \
    libboost-system-dev \
    libboost-test-dev \
    libcairo2-dev \
    libcurl4-gnutls-dev \
    libfontconfig1-dev \
    libfreetype6-dev \
    libfribidi-dev \
    libgdal-dev \
    libharfbuzz-dev \
    libjpeg-dev \
    libmpfr-dev \
    libpng-dev \
    libsodium-dev \
    libssh2-1-dev \
    libssl-dev \
    libtiff5-dev \
    libudunits2-dev \
    libxml2-dev \
    libxt-dev \
    libz-dev \
    pandoc \
    pandoc-citeproc \
    sudo \
    unixodbc \
    unixodbc-dev

# COPY verificar_dependencias.r /tmp/verificar_dependencias.r
# COPY instalar_dependencias.r /tmp/instalar_dependencias.r

# RUN Rscript --vanilla /tmp/verificar_dependencias.r
# RUN Rscript --vanilla /tmp/instalar_dependencias.r

RUN Rscript -e "data.table::update_dev_pkg()"

RUN install2.r --error DT
RUN install2.r --error RMySQL
# RUN install2.r --error RPostgreSQL
RUN install2.r --error leaflet.extras
RUN install2.r --error openxlsx
# RUN install2.r --error pool
# RUN install2.r --error sf
RUN install2.r --error shinyjs
RUN install2.r --error shinythemes
