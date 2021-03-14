## Installation for development
```bash
$ cd cms/
$ composer install
$ cp .env.example .env
$ cp tests/.env.example tests/.env

$ cd ../admin/
$ npm install 
$ cp .env.example .env

$ cd ../redis/
$ cp .env.example .env

$ cd ../
$ docker-compose -f docker-compose.yml -f docker-compose.dev.yml build
$ docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d
```

## Installation for production
### cms
```bash
$ cp cms/.env.example cms/.env
```
```env
# cms/.env.example
DB_HOST="localhost"
DB_NAME=""
DB_USER=""
DB_PASS=""
SYS_SECRET=""
SYS_COOKIE_LIFETIME="86400"
SYS_COOKIE_PATH="/"
SYS_COOKIE_DOMAIN=""
SYS_COOKIE_SECURE="false"
SYS_COOKIE_HTTP_ONLY="false"
SYS_DEBUG="true"
SYS_LOCATIONS="api;admin"
```

### admin
```bash
$ cp admin/.env.example admin/.env
```
```env
# admin/.env.example
HOST=0.0.0.0
PORT=4000
```

### redis
```bash
$ cp redis/.env.example redis/.env
```
```env
# redis/.env.example
REDIS_REPLICATION_MODE=master
REDIS_PASSWORD=sOmE_sEcUrE_pAsS
```
### docker
```bash
$ docker-compose build
$ docker-compose up -d
```