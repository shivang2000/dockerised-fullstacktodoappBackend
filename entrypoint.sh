#!/bin/bash

set -e

python manage.py makemigrations account --no-input
python manage.py migrate account --no-input
python manage.py migrate  --no-input
python manage.py collectstatic --no-input 
# python manage.py createsuperuser --username $DJANGO_SUPERUSER_USERNAME  --no-input

ls


gunicorn bankend.wsgi --bind 0.0.0.0:8000