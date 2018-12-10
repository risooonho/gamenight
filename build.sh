#!/bin/bash

function build(){
  local buildDir=$1;
  local imageName=$2;

  echo "Building ${imageName}"
  #docker build --build-arg steam_user=${STEAMUSER} --build-arg steam_pass=${STEAMPASS} -t ${imageName} ./${buildDir}
  #docker push ${imageName}
}

TAG="1.0.0"

for D in */; do
  build $D "gamenight/${D}:${TAG}" &
done;

time wait;

echo "done"