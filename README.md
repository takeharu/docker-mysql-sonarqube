###Attention
- This image is work in progress. It will be changed.

###Note
- This image is based on takeharu/ubuntu-mysql .

###Start
```
$ docker run -d --name sonar-db -p 3306:3306 takeharu/ubuntu-mysql-sonar
```

###Connect from SonarQube image
```
$ docker run -d --name sonar-sv --link sonar-db:sonar-db -p 9000:9000 takeharu/ubuntu-sonarqube
```

