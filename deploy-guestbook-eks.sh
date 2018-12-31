#!/bin/bash

#Deploy do Redis master
kubectl apply -f https://raw.githubusercontent.com/ricardomerces/guestbook-app/master/redis-master-deployment.yaml

#Criando o serviço Redis Master (comunicação da app com o redis para gravação dos dados)
kubectl apply -f https://raw.githubusercontent.com/ricardomerces/guestbook-app/master/redis-master-service.yaml 

#Deploy do Redis slave
kubectl apply -f https://raw.githubusercontent.com/ricardomerces/guestbook-app/master/redis-slave-deployment.yaml

#Criando o serviço Redis Slave(comunicação da app com o redis para a leitura dos dados)
kubectl apply -f https://raw.githubusercontent.com/ricardomerces/guestbook-app/master/redis-slave-service.yaml

#Deploy do Frontend
kubectl apply -f https://raw.githubusercontent.com/ricardomerces/guestbook-app/master/frontend-deployment.yaml

#Criando o serviço do Frontend
kubectl apply -f https://raw.githubusercontent.com/ricardomerces/guestbook-app/master/frontend-service-eks.yaml

#Visualizando o resultado
kubectl get all
