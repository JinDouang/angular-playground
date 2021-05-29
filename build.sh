#!/usr/bin/env bash

# variable
ANGULAR_IMAGE_NAME=angular-playground

# build angular app image
buildImage () {
  # checking if docker image already exists
  if [[ $(docker image inspect --format='{{index .RepoTags 0}}' angular-playground) == $ANGULAR_IMAGE_NAME:latest ]];
    then
        # cleanup
        clean
    else
        echo "$ANGULAR_IMAGE_NAME does not exist, building a new one"
  fi
  docker image build -t $ANGULAR_IMAGE_NAME .
}

# clean angular app image
clean() {
  # checking if docker image already exists
  if [[ $(docker image inspect --format='{{index .RepoTags 0}}' angular-playground) == $ANGULAR_IMAGE_NAME:latest ]];
    then
        # cleanup
        docker-compose down && docker rmi -f $ANGULAR_IMAGE_NAME
    else
        echo "$ANGULAR_IMAGE_NAME has already been cleaned or does not exist"
  fi
}

# startAngular for dev
startAngular() {
    npm run start:docker
}

# build angular app (dist output)
buildAngularApp() {
    docker-compose run --rm angular sh -c "npm run build"
}

for param in "$@"
do
  case $param in
    build)
      buildImage
      ;;
    clean)
      clean
      ;;
    start)
      startAngular
      ;;
    buildAngularApp)
      buildAngularApp
      ;;
    *)
      echo "Invalid argument : $param"
  esac
  if [ ! $? -eq 0 ]; then
    exit 1
  fi
done