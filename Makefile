.PHONY: install-prd install static migrate runserver test lint

install-prd:
	pip install pipenv --upgrade
	pipenv install

install:
	pip install pipenv --upgrade
	pipenv install --dev

static:
	politize_recommendation/manage.py collectstatic --no-input

migrate:
	politize_recommendation/manage.py migrate

runserver:
	politize_recommendation/manage.py runserver

test:
	pipenv check
	coverage run politize_recommendation/manage.py test --no-input

lint:
	flake8
