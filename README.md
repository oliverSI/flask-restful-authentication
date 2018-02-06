# flask-restful-authentication
An example for RESTful authentication using Flask, PyMongo and jwt.
## 
## Quick Start
1. Save your SSL certificates .key and .crt to /path/to/certs
2. Clone the repository and run containers with the following command.
```
git clone https://github.com/oliverSI/flask-restful-authentication.git
sudo docker-compose up -d
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
