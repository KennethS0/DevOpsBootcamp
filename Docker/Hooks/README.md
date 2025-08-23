# Hooks
Allows you to define a set of commands that will be executed sometime during the Container's lifecycle.

For example `post-start` hooks:
```
services:
  app:
    image: backend
    user: 1001
    volumes:
      - data:/data    
    post_start:
      - command: chown -R /data 1001:1001
        user: root

volumes:
  data: {} # un volumen de Docker se crea con propiedad de root

```

And there are also `pre-stop` hooks:
```
services:
  app:
    image: backend
    pre_stop:
      - command: ./data_flush.sh
```