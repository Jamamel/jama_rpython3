FROM jamamel/jama_r-base:3.6.3

RUN apt-get update && apt-get install -y \
    libv8-dev \
    libudunits2-dev \ 
    liblzma-dev \
    libbz2-dev \
    libmariadb-dev \
    git-all \
    libpoppler-cpp-dev \
    python3-dev \
    python3-pip

RUN pip3 install --upgrade pip

RUN pip3 install -U virtualenv && \ 
    pip3 install -U numpy && \
    pip3 install -U cython && \
    pip3 install -U spacy 
RUN python3 -m spacy download en_core_web_sm && python3 -m spacy download es_core_news_sm

CMD [ "/bin/bash" ]