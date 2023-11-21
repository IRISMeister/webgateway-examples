source parameters.cfg

# use apache-ssl to create them. See README.md
# cp ~/git/apache-ssl/ssl/server.crt webgateway/sslwebcert.pem
# cp ~/git/apache-ssl/ssl/server.key webgateway/sslwebkey.pem
# cp ~/git/apache-ssl/ssl/caint.crt webgateway/SSLCertificateChainFile.pem

#; Prior to running the docker-compose, ensure the instances have
#; read-write permissions to the bindmounts.
#chmod -R 755 iris
sudo chown -R 51773:51773 iris
chmod -R 755 webgateway

docker-compose build
docker-compose up -d


# SSL SETUP - omit if opting out of SSL
# It takes several seconds for iris to spin up, so wait for it
# before configuring it for SSL. Adjust sleep time if need be.
#sleep 30
#docker exec iris /bin/sh -c "/iris-shared/configure.sh"

