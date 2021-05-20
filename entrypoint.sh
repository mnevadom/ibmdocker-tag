#!/bin/sh
set -e

REGISTRY_URL=$1
NAMESPACE_TAG=$2
REGISTRY_NAMESPACE=$3
IMAGE_NAME=$4
BUILD_NUMBER=$5
TAG=$6



echo "My home is "
echo $HOME

echo -e "Variables de entorno de compilación:"
echo "REGISTRY_URL=${REGISTRY_URL}"
echo "NAMESPACE_TAG=${NAMESPACE_TAG}"
echo "REGISTRY_NAMESPACE=${REGISTRY_NAMESPACE}"
echo "IMAGE_NAME=${IMAGE_NAME}"
echo "BUILD_NUMBER=${BUILD_NUMBER}"
echo "TAG=${TAG}"



ibmcloud plugin install container-registry -r 'IBM Cloud'

ibmcloud cr login

ibmcloud cr image-tag $REGISTRY_URL/$REGISTRY_NAMESPACE/$IMAGE_NAME:$BUILD_NUMBER $REGISTRY_URL/$NAMESPACE_TAG/$IMAGE_NAME:$TAG



