FROM python:3.12-slim
ENV POETRY_VIRTUALENVS_CREATE=false

WORKDIR app/
COPY . .

RUN pip install poetry poetry-plugin-shell
RUN poetry config virtualenvs.create false
RUN poetry shell
RUN poetry install --no-interaction --no-ansi

EXPOSE 8000
CMD poetry run uvicorn --host 0.0.0.0 src.diytraining.app:app
# CMD poetry run fastapi dev src/fast_zero/app.py --host 0.0.0.0