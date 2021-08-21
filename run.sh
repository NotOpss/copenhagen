docker build -t test .

docker tag test ghcr.io/notopss/copenhagen:$BUILD_NUMBER

echo $MY_PAT | docker login ghcr.io -u macbash --password-stdin

docker push ghcr.io/notopss/copenhagen:$BUILD_NUMBER
