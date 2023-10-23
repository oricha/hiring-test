# Documentation

Describe howto run your test...

- docker build -t django-app .
- docker run -it --rm -p 8080:8080 django-app
- helm upgrade --install --wait django-app ./hiring-test-helm-chart
- minikube service django-app



pip install python-dotenv

pip install -r requirements.txt

docker build -t oricha/helm-hiring:0.0.1 .
docker push oricha/helm-hiring:0.0.1 


/opt/homebrew/opt/postgresql@14

pip install psycopg2 --install-option="--pg-config=/opt/homebrew/opt/postgresql@14"

ls /opt/homebrew/opt/postgresql@14/bin/pg_config

export PATH=$PATH:/opt/homebrew/opt/postgresql@14/bin/pg_config

source ~/.zshrc