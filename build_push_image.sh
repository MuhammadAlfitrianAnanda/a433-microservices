# Membuat Docker image dengan tag 'item-app:v1' dari Dockerfile di direktori saat ini.
docker build -t item-app:v1 .

# Menampilkan daftar Docker image yang ada di lokal.
docker images

# Login ke Docker Hub menggunakan terminal, menggunakan password dari variabel lingkungan PASSWORD_DOCKER_HUB.
# Ini memungkinkan autentikasi tanpa menuliskan password secara langsung di command line.
echo $PASSWORD_DOCKER_HUB | docker login -u alfi --password-stdin

# Mengubah nama Docker image lokal 'item-app:v1' menjadi 'alfi/item-app:v1'.
# Ini diperlukan sebelum mengunggah ke Docker Hub.
docker tag item-app:v1 alfi/item-app:v1

# Mengunggah Docker image dengan tag 'alfi/item-app:v1' ke Docker Hub.
docker push alfi/item-app:v1