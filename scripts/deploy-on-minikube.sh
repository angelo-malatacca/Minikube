#!/bin/sh
kubectl get pods
echo
echo
minikube addons enable ingress
echo
echo
kubectl apply -f ../tomcat/deployment.yaml
kubectl apply -f ../tomcat/service.yaml
kubectl apply -f ../tomcat/ingress.yaml
echo
echo
kubectl apply -f ../nginx/deployment.yaml
kubectl apply -f ../nginx/service.yaml
kubectl apply -f ../nginx/ingress.yaml
echo
echo
kubectl get pods
echo
echo
kubectl get service
echo
echo
minikube service tomcat-service --url
echo
minikube service nginx-service --url