#!/bin/sh
kubectl get pods
minikube addons enable ingress
kubectl apply -f ../tomcat/deployment.yaml
kubectl apply -f ../tomcat/service.yaml
kubectl apply -f ../tomcat/ingress.yaml

kubectl get pods

kubectl get service tomcat-service
minikube service tomcat-service --url