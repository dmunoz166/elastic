# Cluster de Elasticsearch con Docker Compose
1. Se debe modificar el [instances.yml](./instances.yml) añadiendo en el apartado IP la ip privada y publica de la maquina donde se desplegara el cluster.
2. Crear el directorio para almacenar los certficados `mkdir certs`
3. Generar los certificados `docker-compose -f create-certs.yml run --rm create_certs`
4. Crear los directarios donde almacenara infrmación elasticsearch `mkdir data1-ES data2-ES`
5. Revisar el archivo [env](./.env) para cambiar la contraseña del cluster, versión, nombre de los contenedores, ruta de los certificados cuando se monten y el codigo de encryptación para kibana
6. Iniciar el cluster corriendo
```
docker-compose up -d
```
7. Crear roles y usuarios para los beats y logstash, una vez inicie kibana desde DevTools generalos a partir del [contenido](./usersandroles.conf) del archivo.