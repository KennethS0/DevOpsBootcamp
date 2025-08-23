# Docker Compose
Allows the user to set up all the different containers that need to be created in a single file called `docker-compose.yml`. And then executing `docker-compose up` to run all the different containers. Use `docker-compose down` to shut it off.

Small example: 
```
version: "3.9"
services:
  web:
    image: nginx
    ports:
      - "8080:80"
  db:
    image: postgres:15
    environment:
      POSTGRES_PASSWORD: secret
    volumes:
      - db-data:/var/lib/postgresql/data

volumes:
  db-data:
```