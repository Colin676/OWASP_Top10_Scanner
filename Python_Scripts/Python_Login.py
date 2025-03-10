import requests as re

res=re.post('http://127.0.0.1:3000/api/auth/login', data={'user':'admin','password':'admin'})
print(res)
print(res.headers)