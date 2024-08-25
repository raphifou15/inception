# Inception

## Introduction

Ce projet a pour but d’approfondir vos connaissances en vous faisant utiliser Docker.
Vous allez virtualiser plusieurs images Docker en les créant dans votre nouvelle machine
virtuelle personnelle.

## Prerequis pour lancer le projet

- Dans une machine virtuelle pour ce projet, j'ai utilisé Manjaro
- Installez Docker, Docker Compose, et tous les outils dont vous avez besoin.

## Lancer le programme

- Aller la ou il y a le Makefile et faire

```bash
make
```

- Apres cela attendre que tout sois installer.

## Ce que j'ai realiser

- Un container Docker contenant NGINX avec TLSv1.2 ou TLSv1.3 uniquement.
- Un container Docker contenant WordPress + php-fpm (installé et configuré) uniquement sans nginx.
- Un container Docker contenant MariaDB uniquement sans nginx.
- Un volume contenant votre base de données WordPress.
- Un second volume contenant les fichiers de votre site WordPress.
- Un docker-network qui fera le lien entre vos containers.
- Les containers redémarrent en cas de crash
