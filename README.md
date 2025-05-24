First steps for new FastAPI project

RUN git clone
COPY dockerfile #Disable poetry commands in first run
COPY docker-compose #Disable entrypoint commands in first run
COPY entrypoint.sh for run alembic after
COPY .gitignore for default
RUN  docker build -t "diytraining" .
RUN  docker run -d --name diytraining -p 8000:8000 diytraining:latest
RUN  docker-compose up --build
