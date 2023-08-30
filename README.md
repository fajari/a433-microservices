# Solution

1. Instalasi RabbitMQ dengan Helm Chart

    ```bash
    helm install rabbitmq oci://registry-1.docker.io/bitnamicharts/rabbitmq --namespace rabbit
    ```
    
    Kemudian ikuti petunjuk yang muncul setelah instalasi selesai untuk bisa mengakses RabbitMQ Management dan login sesuai kredensial yang diperoleh.

2. Buat user baru dengan username `test` dan password `test`.
3. Berikan default wildcard permission untuk user `test`.
