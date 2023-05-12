
IMAGE_NAME="nginx-stream"
GHCR_REPO_NAME="kaiyga/vectordocs"
GHCR_REPO="$GHCR_REPO_NAME:$IMAGE_NAME"
sudo docker images
sudo docker build -t $IMAGE_NAME $PWD
sudo docker tag $IMAGE_NAME:latest ghcr.io/$GHCR_REPO
sudo docker push ghcr.io/$GHCR_REPO

