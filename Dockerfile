FROM r-base:4.3.2

LABEL org.opencontainers.image.licenses="GPL-2.0-or-later" \
    org.opencontainers.image.source="https://github.com/ryanjob42/rmarkdown" \
    org.opencontainers.image.vendor="Ryan Job" \
    org.opencontainers.image.authors="Ryan Job"

COPY render.R /usr/local/src/myscripts/

RUN apt-get update \
    && apt-get install -y r-cran-rmarkdown \
    && rm -rf /var/lib/apt/lists/*

# On startup, launch the script which is used to render an RMarkdown file.
# The user should specify this file on the command line.
# E.g., "docker run image_name myFile.Rmd".
ENTRYPOINT ["/usr/bin/Rscript", "/usr/local/src/myscripts/render.R"]
CMD [""]
