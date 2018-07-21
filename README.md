# flask-restful-authentication
An example for RESTful authentication using nginx, uWSGI, Flask, MongoDB, Postfix and JSON Web Token(JWT).
## 
## Quick Start
1. Clone the repository with the following command.
```
git clone https://github.com/oliverSI/flask-restful-authentication.git
```
2. Save your SSL certificates .key and .crt in ./flask-restful-authentication/certs
3. Run containers with the following command.
```
sudo docker-compose up -d
```

## Calling API
### Register
```
curl -X POST -H "Content-Type: application/json" -d '{"email": "test@example.com", "password": "password"}' http://127.0.0.1/v1/register
```
### Activation
```
curl -X PUT -H "Content-Type: application/json" -d '{"activation_code": "activation code you received"}’ http://127.0.0.1/v1/activate
```
### Login
```
curl -X GET -H "Content-Type: application/json" -d '{"email": “test@example.com", "password": "password"}’ http://127.0.0.1/v1/login
```
### Do something
```
curl -H "Authorization: Bearer [token you got]" -H "Content-Type: application/json" http://127.0.0.1/v1/todo
```
