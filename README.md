# UTN-sensorial-raspberry-deploy

Despliegue productivo del proyecto [UTN-sensorial-raspberry](https://github.com/brianwolf/UTN-sensorial-raspberry)

![1](img/sensorial.jpg)

---

## Requisitos

* docker 20.10.7
* docker-compose 1.28.2
* git 2.25.1

## Uso

### Instalacion

Hace un pull de la imagen en *dockerhub* y luego la levanta

```bash
make i
```

### Borrado

Para la app y borra todo, contenedores, imagenes y volumes de la misma

```bash
make r
```

### Logs

Abre los logs con *follow*

```bash
make l
```

### Actualizacion

Para la app, hace un pull del proyecto de *github*, un pull de *dockerhub* y vuelve a levantar la app

```bash
make u
```

## Repositorio de imagenes

* [dockerhub/sensorial-raspberry](https://hub.docker.com/r/brianwolf94/sensorial-raspberry)

---

## Facultad

![1](img/utn.jpg)
