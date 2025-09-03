# Web Servers
These servers provide anything that you access through the web and are available 24/7.

There are 3 servers widely used in the industry.

## NGINX
It is a very versatile web server that can handle a lot of simultaneous requests. However, it's configuration files can be difficult to manage.

The following commands show how *NGINX* can be executed through containers:

```
# Executes the container
docker run -d --name nginx-container -p 8080:80 nginx:alpine

# Verifiy the running server
curl http://localhost:8080
```

This next example shows how you can personalize *NGINX* with a Docker *bind mount*.

```
# Create your site
mkdir my_site
echo "<h1>My Site</h1>
<p>This server is powered by NGINX</p>" > my_site/index.html

# Servir tu sitio personalizado
docker run -d --name my-nginx -p 8080:80 -v $(pwd)/my_site:/usr/share/nginx/html nginx:alpine
```

## Apache
It's a very reliable alternative that has been used in the market for a long time. It is easy to configure and has a lot of documentation. It can be a little slow when handling simultaneous connections.  

The following commands show how *Apache* can be executed through containers:

```
# Executes the container
docker run -d --name my-apache -p 8081:80 httpd:2.4-alpine

# Verify the running server
curl http://localhost:8081
```

This next example shows how you can personalize *Apache* with a Docker *bind mount*.

```
# Create your site
mkdir my_site
echo "<h1>My Site</h1>
<p>This server is powered by APACHE</p>" > my_site/index.html

# Servir tu sitio personalizado
docker run -d --name my-apache -p 8081:80 -v $(pwd)/my_site:/usr/local/apache2/htdocs httpd:2.4-alpine
```

## Caddy
It's the most modern alternative to the other two Web Servers, it allows for an automatic configuration and also has free HTTPS.

The following commands show how *Caddy* can be executed through containers:

```
# Has HTTPS by default
docker run -d --name my-caddy -p 8082:80 caddy:alpine
```