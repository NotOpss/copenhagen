docker build -t test .

docker tag test ghcr.io/NotOpss/copenhagen:latest

echo $COPENHAGEN_PAT | docker login ghcr.io -u macbash --password-stdin

docker push ghcr.io/NotOpss/copenhagen:latest
