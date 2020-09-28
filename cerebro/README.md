# Cerebro

Para realizar la comunicacion https se baso en los enlaces:
- [Configurar](https://lightbend.github.io/ssl-config/WSQuickStart.html) el [certificado ssl](https://www.playframework.com/documentation/2.5.x/ExampleSSLConfig?utm_source=sgdocs&utm_medium=additional_resources&utm_content=elasticsearch-cerebro-search-guard) a usar contra el cluster

- Se siguio el tutorial a [continuacion](https://docs.search-guard.com/latest/elasticsearch-cerebro-search-guard)

- Se cambio el archivo `/opt/cerebro/conf/application.conf` para que responda a las variables de entorno dadas desde el compose:

```
play.ws.ssl {
  trustManager = {
    stores = [
      { type = "PEM", path = ${?CA_PATH} }
    ]
  }
}
# A list of known hosts
hosts = [
  {
    host = ${?ES_HOST}
    name = ${?CLUSTER}
  }
]
``` 
