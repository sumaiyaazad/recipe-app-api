@echo off "initializing project"
python -m venv env
@REM if you don't want to restart your ide run the following command otherwise ignore
source env/bin/activate
pip install -r requirements.txt
django-admin startproject app app
@REM python manage.py runserver 0.0.0.0:8000
@REM python manage.py test
cd app