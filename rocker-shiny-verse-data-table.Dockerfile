FROM rocker/shiny-verse:4.3.1

COPY verificar_dependencias.r /tmp/verificar_dependencias.r
COPY instalar_dependencias.r /tmp/instalar_dependencias.r

RUN Rscript --vanilla /tmp/verificar_dependencias.r
RUN Rscript --vanilla /tmp/instalar_dependencias.r

COPY Directorio_ESSCA.parquet /tmp/Directorio_ESSCA.parquet
COPY Directorio_ESH.parquet /tmp/Directorio_ESH.parquet
COPY .Rhistory /tmp/.Rhistory
