# Documentation

Describe howto run your test...

## Prerequisites

pip install python-dotenv
pip install psycopg2
pip install psycopg2-binary

- docker-compose up
- helm create django-app
- helm upgrade --install --wait django-app ./hiring-test-helm-chart
- minikube service django-app


docker build -t oricha/helm-hiring:0.0.1 .
docker push oricha/helm-hiring:0.0.1 





