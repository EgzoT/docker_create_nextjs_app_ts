# docker_create_nextjs_app_ts

Create or continue create nextjs app typescript project in docker container

## Start compose

```sh
sudo docker compose up
```

## Stop compose

```sh
sudo docker compose down
```

## Install new npm package

```sh
sudo docker exec -it docker_create_nextjs_app_ts-create_nextjs_app_ts-1 bash
npm i <package_name>
```

## Uninstall npm package

```sh
sudo docker exec -it docker_create_nextjs_app_ts-create_nextjs_app_ts-1 bash
npm uninstall <package_name>
```

## Restart compose

```sh
sudo docker compose restart
```

## Check compose

```sh
sudo docker compose images
```

## Remove compose images

```sh
sudo docker image rm docker_create_nextjs_app_ts-create_nextjs_app_ts
```
