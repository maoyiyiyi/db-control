# resume-library

# Usage
### Preparation
```
$ sudo ./preparation.sh
```

### MongoDB
1. install mongoDB
```
$ ./deploy.sh start
```

2. uninstall mongoDB
```
$ ./deploy.sh stop
```

3. get mongoDB status
```
$ ./deploy.sh status
```

4. restart mongoDB
```
$ ./deploy.sh restart
```

### Insert document to mongoDB
```
$ ./db-control insert
```


### delete document in mongoDB
```
$ ./db-control delete [name]
```