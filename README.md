## node-turl

[![Sonar](https://sonarcloud.io/api/project_badges/measure?project=node-turl&metric=alert_status)](https://sonarcloud.io/dashboard?id=node-turl)
[![Sonar](https://sonarcloud.io/api/project_badges/measure?project=node-turl&metric=coverage)](https://sonarcloud.io/dashboard?id=node-turl)
[![Sonar](https://sonarcloud.io/api/project_badges/measure?project=node-turl&metric=security_rating)](https://sonarcloud.io/dashboard?id=node-turl)
[![Sonar](https://sonarcloud.io/api/project_badges/measure?project=node-turl&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=node-turl)
[![Sonar](https://sonarcloud.io/api/project_badges/measure?project=node-turl&metric=code_smells)](https://sonarcloud.io/dashboard?id=node-turl)
[![Sonar](https://sonarcloud.io/api/project_badges/measure?project=node-turl&metric=sqale_index)](https://sonarcloud.io/dashboard?id=node-turl)

http://tinyurl.com URL Shortener Node.js Module

### Usage

```
const turl = require('turl');

turl.shorten('http://google.com').then((res) => {
  console.log(res);
}).catch((err) => {
  console.log(err);
});
```
