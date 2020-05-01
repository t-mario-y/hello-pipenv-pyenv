# hello-pipenv-pyenv

## setting up

```shell script
pipenv --python=3.6.10
pipenv install
pipenv install --dev
```

## running scripts

```shell script
# format
pipenv run black

# lint
pipenv run flake8

# type check
pipenv run mypy

# test and main requires $PYTHONPATH
export PYTHONPATH="$PYTHONPATH:/app"
pipenv run test
pipenv run main
```

## build docker image

```shell script
docker build -t pipenv-docker:latest .
docker run pipenv-docker:latest
```
