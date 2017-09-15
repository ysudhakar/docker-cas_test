# CAS Test

This repository contains Docker Compose configuration for bringing up a CAS server for local testing purposes. The CAS configuration is overridden to disable LDAP authentication and rely solely on the Trogdir authentication handler.

## Requirements

Only two dependencies are needed to bring up the CAS testing environment:
* [Docker CE](https://docs.docker.com/engine/installation/)
* [Docker Compose](https://docs.docker.com/compose/install/)

## Usage

### Running the test environment

Use the `start.sh` and `stop.sh` helper scripts to start up CAS and its dependencies:
```
./start.sh
<Run tests>
./stop.sh
```

CAS will be available at https://localhost:8443/cas. To test authentication, a test user is automatically added to MongoDB:

```
Username: user1@example.com
Password: user1
```

### Test users

The `start.sh` script automatically loads test users from the `test_users.js` script when starting up the CAS testing environment. Add or modify users in this file as needed and changes will be applied on the next start.
