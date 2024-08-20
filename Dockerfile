FROM langchain/langgraph-api:3.11



ADD . /deps/langgraph-react

RUN PYTHONDONTWRITEBYTECODE=1 pip install --no-cache-dir -c /api/constraints.txt -e /deps/*

ENV LANGSERVE_GRAPHS='{"agent": "/deps/langgraph-react/langgraph_react/main.py:app"}'

WORKDIR /deps/langgraph-react