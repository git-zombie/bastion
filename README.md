# My project's README
This project is for a container that only runs SSH. My primary use case for this is to reverse proxy into containers that are not allowed to speak to the host. 

It cannot talk to the host, thanks to macvlan networking.

The default password should not be used. This is for transient usage only, so I want to rotate the password every time I use it, therefore I pass in a new password each time using build-args, e.g.

```
docker build --build-arg password=potato  -t bastion .
```
