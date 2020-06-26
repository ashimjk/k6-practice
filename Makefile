build:
	docker-compose -f stack/docker-compose.yml build
infra:
	docker-compose -f stack/docker-compose.yml up -d influxdb grafana
run:
	docker-compose -f stack/docker-compose.yml run k6 run /tests/script.js
direct:
	k6 run --vus 10 --duration 30s --out influxdb=http://localhost:8086/k6 ./tests/script.js
cleanup:
	docker-compose -f stack/docker-compose.yml stop && docker-compose -f stack/docker-compose.yml rm -f
