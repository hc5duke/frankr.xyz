# Frankr.xyz

http://frankr.xyz

## Setup

```bash
# install ruby dependencies
gem install haml sass

# install npm dependencies
npm install
npm install -g grunt-cli http-server

# need this file to exist
echo "{}" > .grunt-aws.json
```

## Run
```bash
grunt & http-server dist & open http://localhost:8080
```

## Deploy

```bash
grunt s3
```
