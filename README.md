# flask-restful-authentication
An example for RESTful authentication using Flask, PyMongo and jwt.

## Quick Start
### 1.Preparing MTA
```
sudo docker run -p 25:25 \
         -e maildomain=mail.example.com -e smtp_user=user:pwd \
         --name postfix -d catatnight/postfix
MAIL_SERVER=`sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' postfix`
```         
For details: https://hub.docker.com/r/catatnight/postfix/

### 2.Preparing MongoDB
```
sudo docker run --name mongo -d mongo
DB_HOST=`sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' mongo`
```
For details: https://hub.docker.com/_/mongo/

### 3.Preparing flask-restful-authentication
```
git clone https://github.com/oliverSI/flask-restful-authentication.git
sudo docker build -t flask-restful-authentication .
sudo docker run -it --rm -p 80:80 -e MAIL_SERVER=$MAIL_SERVER -e DB_HOST=$DB_HOST -e DEBUG=1 flask-restful-authentication
```

## Calling API
### Register
```
curl -X POST -H "Content-Type: application/json" -d '{"email": "test@example.com", "password": "password"}' http://127.0.0.1/v1/register
```
### Activation
```
curl -X PUT -H "Content-Type: application/json" -d '{"activation_code": “activation code you received”}’ http://127.0.0.1/v1/activate
```
### Login
```
curl -X GET -H "Content-Type: application/json" -d '{"email": “test@example.com", "password": "password”}’ http://127.0.0.1/v1/login
```
### Do something
```
curl -H "Authorization: Bearer [token you got]” -H "Content-Type: application/json" http://127.0.0.1/v1/todo
```
