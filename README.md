# Frankr.xyz

http://frankr.xyz

## Setup

```bash
npm install
npm install -g grunt-cli http-server
echo "{}" > .grunt-aws.json
```

## Run
```
grunt & http-server dist & open http://localhost:8080
```

## Deploy

```bash
grunt s3
```
