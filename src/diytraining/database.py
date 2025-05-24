from sqlalchemy import create_engine
from sqlalchemy.orm import Session

engine = create_engine(
    'postgresql+psycopg://app_user:app_password@diytraining_database:5432/app_db'
)


def get_session():  # pragma: no cover
    with Session(engine) as session:
        yield session
