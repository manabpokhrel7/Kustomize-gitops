#!/bin/bash
gcloud container clusters get-credentials my-gke-cluster-1 --location=us-central1
kubectl apply -f manifest/base/deployment.yaml
kubectl apply -f manifest/base/service.yaml
kubectl get svc -o wide