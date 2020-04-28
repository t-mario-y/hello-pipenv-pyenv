FROM python:3.6.10 AS builder
ENV PYROOT /pyroot
ENV PYTHONUSERBASE $PYROOT

RUN pip install pipenv==2018.11.26
COPY Pipfile* ./
RUN PIP_USER=1 PIP_IGNORE_INSTALLED=1 pipenv install --dev --system --deploy --ignore-pipfile

FROM python:3.6.10-alpine3.11 AS app_image
ENV PYROOT /pyroot
ENV PYTHONUSERBASE $PYROOT
ENV PYTHONPATH $PYTHONPATH:/app

WORKDIR /work
COPY --from=builder $PYROOT/lib/ $PYROOT/lib/
COPY app/ ./app

ENTRYPOINT ["python", "./app/batch_entrypoint.py"]
