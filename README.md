# webgateway-examples
Examples of how to configure and use the WebGateway with InterSystems IRIS

Modified to meet my own purpose.

# docker-compose 

review [demo-compose/README.txt](README.txt) first.

## prepare TLS files

Create private/public keys for Apache Web Server.
```
$ git clone https://github.com/IRISMeister/apache-ssl.git
$ cd apache-ssl
$ ./setup.sh
```

Copy them into webgateway/ folder.
```
$ cd webgateway-examples/demo-compose
$ cp ~/git/apache-ssl/ssl/server.crt webgateway/sslwebcert.pem
$ cp ~/git/apache-ssl/ssl/server.key webgateway/sslwebkey.pem
$ cp ~/git/apache-ssl/ssl/caint.crt webgateway/SSLCertificateChainFile.pem

```
