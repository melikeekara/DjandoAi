@echo off
echo =====================================
echo Activating Python Virtual Environment
echo =====================================
python -m venv venv
call venv\Scripts\activate

echo =====================================
echo Installing Required Packages
echo =====================================
if exist requirements.txt (
    pip install -r requirements.txt
) else (
    pip install django
)

echo =====================================
echo Running Migrations
echo =====================================
python manage.py migrate

echo =====================================
echo Starting Django Server
echo =====================================
python manage.py runserver
