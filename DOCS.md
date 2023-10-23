# Documentation

Describe howto run your test...

- docker build -t django-app .
- docker run -it --rm -p 8080:8080 django-app
- helm upgrade --install --wait django-app ./hiring-test-helm-chart
- minikube service django-app



python -m venv venv source venv/bin/activate  

pip install -r requirements.txt


export SECRET_KEY=yoursecretkey
export DEBUG=True
export DATABASE_NAME=yourdbname
export DATABASE_USER=yourdbuser
export DATABASE_PASSWORD=yourdbpassword
export DATABASE_HOST=localhost
export DATABASE_PORT=yourdbport
