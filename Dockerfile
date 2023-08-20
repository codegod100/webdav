FROM debian
RUN apt update && apt install -y python3-poetry && rm -rf /var/lib/apt/lists/*
WORKDIR /workspace/davserver
COPY poetry.lock poetry.lock
COPY pyproject.toml pyproject.toml
RUN poetry install
RUN mkdir /data
COPY index.html /data/index.html
COPY davrunner.sh davrunner.sh
EXPOSE 8008
ENTRYPOINT ["/workspace/davserver/davrunner.sh"]