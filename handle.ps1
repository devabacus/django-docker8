python -m venv env
.\env\Scripts\Activate.ps1
pip install django
pip install gunicorn
django-admin startproject touristhelper
cd touristhelper
python -m pip freeze > requirements.txt
python manage.py migrate
python manage.py runserver 0.0.0.0:8301

docker compose up --build

pip install django-environ

