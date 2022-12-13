FROM conda/miniconda3

WORKDIR /spinningup

COPY . /spinningup

RUN conda create -n spinningup python=3.6 && \
    echo "source activate spinningup" > ~/.bashrc && \
    cd spinningup && \
    pip install --upgrade pip && \
    pip install -e .
CMD [ "python", "main.python" ]



    



