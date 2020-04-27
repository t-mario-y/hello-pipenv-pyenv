# hello-pipenv-pyenv

## setting up

```shell script
pipenv --python=3.6.10
pipenv install
pipenv install --dev
```

## commands

```shell script
pipenv run lint

# test and main requires $PYTHONPATH
export PYTHONPATH="$PYTHONPATH:/app"
pipenv run test
pipenv run main
```
