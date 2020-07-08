#!/bin/sh
kubectl get pods
minikube addons enable ingress
kubectl apply -f ../nginx/deployment.yaml
kubectl apply -f ../nginx/service.yaml
kubectl apply -f ../nginx/ingress.yaml

kubectl get pods

kubectl get service nginx-service
minikube service nginx-service --url