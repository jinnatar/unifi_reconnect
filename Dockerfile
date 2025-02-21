FROM ghcr.io/astral-sh/uv:0.6.2-python3.13-alpine AS builder
RUN mkdir /build
WORKDIR /build

COPY pyproject.toml uv.lock README.md ./
COPY src ./src
RUN uv build

FROM python:3.13-alpine
WORKDIR /srv
RUN --mount=type=bind,from=builder,source=/build,target=/build pip install /build/dist/*.whl

ENTRYPOINT [ "unifi_reconnect" ]
