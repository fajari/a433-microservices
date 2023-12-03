#!/bin/bash

# proses build applikasi item-app
docker build -t item-app:v1 .

# menampilkan hasil build
docker images

# membuat tag dari hasil build
docker tag item-app:v1 fajari/item-app:v1

# login ke dockerhub
docker login -u fajari

# mengirimkan hasi image ke repository
docker push fajari/item-app:v1
