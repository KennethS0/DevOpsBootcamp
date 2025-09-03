# Servers
This module covers the different types of servers that are available, along with their pros and cons.

A server is a computational system that provides a service, resource or data to other systems.

## Server Infrastructures
There are different types of servers. The decision of which one to use comes from the business's needs and it's available resources.

1. **Bare-metal**: A real machine which you have physically. It has a lot of computing power but it is very expensive and slow to scale.

2. **Virtual Machine**: A server that lives within another server. It is cheaper and can have several instances, with the downside of sharing resources.

3. **Container**: The most lightweight and modern type of server. It's downside is it's learning curve.

## Servers in DevOps
We can have several instances of servers, assigning a specific responsibility to each one of them. 

1. **Development**: Used to develop any new features and test them in an isolated environmnent.
2. **Staging**: Used to validate the functionality of the system, which will be lates pushed to production if everything is fine.
3. **Production**: Used by the end costumers to access the product.

## Types of Servers
You can find an example of how *Web Servers* and *Application Servers* interact in the `Web-Load-Balancers` folder that points to another repository.

1. **Web Servers**: Serves anything that you access through the web. More can be found in the *WebServers* folder.

2. **Application Servers**: These are the servers that execute the background logic and process the information that the Web Server is going to send back to the end user.

3. **Database Servers**: These servers are the ones responsible for preserving any type of data for future use. *Application Servers* are the ones that connect to these ones to manipulate data.

## Systems Infrastructure
There are two approaches when designing an application, we can either decouple the application and have it separated for more fault tolerant operations with a higher cost of resources or have a single application that allows for higher performance but if something fails then everything fails.

1. Monoliths: Applications that handle everything with minimal or no communication with other services.
2. MicroServices: Segmented applications that can be seen as several applications that communicate with one another.