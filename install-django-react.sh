PROJECT_NAME=cop4710
sudo apt update && sudo apt upgrade
mkdir $PROJECT_NAME
cd $PROJECT_NAME


## Django
pip3 install pipenv
pipenv shell
pipenv install django
django-admin startproject backend
cd backend
python3 manage.py startapp $PROJECT_NAME
python3 manage.py migrate
# python manage.py runserver &
cd ..


## Node
sudo apt install nodejs npm
npx create-react-app frontend
cd frontend
npm install bootstrap reactstrap axios
mkdir src/components
touch src/components/.gitkeep
# npm start &
cd ..
