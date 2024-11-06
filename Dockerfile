FROM python:3.11-alpine3.19

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./orders /code/orders

CMD ["fastapi", "run", "orders/app.py", "--port", "8080"]
