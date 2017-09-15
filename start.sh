# Start up memcached and MongoDB
docker-compose up -d memcached
docker-compose up -d mongodb

# Wait for the databases to be ready
while ! echo exit | nc localhost 11311 >/dev/null 2>&1; do sleep 1; done
while ! echo exit | nc localhost 28017 >/dev/null 2>&1; do sleep 1; done

# Load sample data into MongoDB
docker exec -i castest_mongodb mongo < test_users.js

# Start up CAS
docker-compose up -d app
