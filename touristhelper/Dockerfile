FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . . 

RUN pip show gunicorn

# CMD [ "python", "manage.py","runserver", "0.0.0.0:8100" ]
CMD ["gunicorn", "--bind", "0.0.0.0:8301", "touristhelper.wsgi:application"]
# CMD ["/bin/bash"]

