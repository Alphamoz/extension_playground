# Playground to develop BlueOS Extension
Welcome to my docker to develop BlueOS Extension
This is a repo to build a simple extension using docker for BlueOS Extension

#### _Please install Docker and register before proceed to get a username for build docker image._

## To build, use this command

  ```shell
  docker buildx build --platform linux/arm/v7 . -t my_docker_user/my_blueos_extension:latest --output type=registry
  ```
  
  ### Example if want to build for multiple platform, with version 0.0.1
  ```shell
  docker buildx build --platform linux/arm/v7,linux/amd64 . -t my_docker_username/extension_playground:v0.0.1 --output type=registry
  ```

## To run this image: 
Open the docker, go to images tab, search for your built image and run the image to see the result.

NOTE: This docker is only showing logs using logging and print function.




