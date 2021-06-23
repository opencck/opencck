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

## Development
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
MARIADB_DATABASE=cck
MARIADB_USER=cck
MARIADB_PASSWORD=password
MARIADB_SKIP_TEST_DB=yes
```
### cms
```env
# cms/.env
DB_HOST="mysql"
DB_NAME="cck"
DB_USER="cck"
DB_PASS="password"
REDIS_HOST="redis"
REDIS_PASSWORD=""
REDIS_PORT="6379"
REDIS_DB="0"
MEMCACHED_HOST="memcached"
MEMCACHED_PORT="11211"
MEMCACHED_WEIGHT="100"
# "" - auto; "redis", "memcached" or "db"
SESSIONS_HANDLER=""
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