# docker-dynamodb_local

```
docker run --rm -p 8000:8000 -it higanworks/docker-dynamodb-local
```

## Endpoint

Ruby: `URI.parse(ENV['DOCKER_HOST']).host + ":8000"`
