Used to reproduce an issue with Prometheus DNS sd, CoreDNS and etcd.

First start up the containers using docker compose:

`docker-compose up --build -d`

Next execute the test script to populate the required records in etcd:

`docker-compose exec test /add.sh 50`

Next watch the logs (wait for Prometheus scrape to see errors):

`docker-compose logs -f`

dig locally like:

`dig @10.2.50.3 SRV "nodeexporter.abcdefghijklmnopqrstuvwxyz.dc.test.lan"`