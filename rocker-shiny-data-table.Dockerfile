FROM rocker/shiny:4.3.1

COPY verificar_dependencias.r /tmp/verificar_dependencias.r
COPY instalar_dependencias.r /tmp/instalar_dependencias.r

RUN Rscript --vanilla /tmp/verificar_dependencias.r
RUN Rscript --vanilla /tmp/instalar_dependencias.r
