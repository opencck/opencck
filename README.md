## Installation
```bash
# cd cms/
# cp .env.example .env
# cp tests/.env.example tests/.env
# composer install

# cd ../admin/
# cp .env.example .env
# npm install

# cd ../mysql/
# cp .env.example .env

$ ./install.sh
```

##Development
```bash
docker-compose -f docker-compose.yml -f docker-compose.dev.yml build
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d
```

## Production
```bash
docker-compose build
docker-compose up -d
```

## Configuration
### mysql
```env
# mysql/.env
REDIS_REPLICATION_MODE=master
REDIS_PASSWORD=sOmE_sEcUrE_pAsS
```
### cms
```env
# cms/.env
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
```env
# admin/.env
HOST=0.0.0.0
PORT=4000
PROXY_API_URL=http://0.0.0.0:5000/
#PROXY_API_URL=http://192.168.99.100:5000/
```

### redis
```env
# redis/.env
REDIS_REPLICATION_MODE=master
REDIS_PASSWORD=sOmE_sEcUrE_pAsS
```