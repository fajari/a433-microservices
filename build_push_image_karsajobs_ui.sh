#!/bin/bash

# Menjalankan build image
echo "Membuat image..."
docker build -t ghcr.io/nekoto-kun/karsajobs-ui:latest .

# Menunggu input PAT
echo "Masukkan PAT: "
read -s CR_PAT

# Melakukan login ke GitHub Container Registry
echo "Melakukan login ke GitHub Container Registry..."
echo $CR_PAT | docker login ghcr.io -u nekoto-kun --password-stdin

# Melakukan push image ke GitHub Container Registry
echo "Melakukan push image ke GitHub Container Registry..."
docker push ghcr.io/nekoto-kun/karsajobs-ui:latest

# Selesai
echo "Selesai"