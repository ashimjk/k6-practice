# K6 Practice

## Run InfluxDb and Grafana
```
make build;
make infra;
```
- Load http://localhost:3000, and import the grafana_dashboard.json config to a new dashboard.

## Run Test
```
make run
```

## Run OpenAPI Generator
```
docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate \
    -i /local/spec.yml \
    -g k6 \
    -o /local/k6-test/
    --skip-validate-spec
```