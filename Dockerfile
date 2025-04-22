FROM ghcr.io/astral-sh/uv:python3.12-alpine

WORKDIR /app

COPY main.py pyproject.toml uv.lock ./

RUN uv sync

EXPOSE 8000

CMD ["uv", "run", "python", "main.py"]
