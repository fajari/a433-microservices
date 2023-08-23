#!/bin/bash

# Menjalankan build image
echo "Membuat image..."
docker build -t item-app:v1 .

# Menampilkan daftar image
echo "Daftar image yang tersedia"
docker images

# Menyiapkan image untuk di-push ke GitHub Container Registry
docker tag item-app:v1 ghcr.io/nekoto-kun/item-app:v1

# Menunggu input PAT
echo "Masukkan PAT: "
read -s CR_PAT

# Melakukan login ke GitHub Container Registry
echo "Melakukan login ke GitHub Container Registry..."
echo $CR_PAT | docker login ghcr.io -u nekoto-kun --password-stdin

# Melakukan push image ke GitHub Container Registry
echo "Melakukan push image ke GitHub Container Registry..."
docker push ghcr.io/nekoto-kun/item-app:v1

# Selesai
echo "Selesai"