#!/bin/bash

# Kubernetes manifest dosyalarını uygulayın
kubectl --kubeconfig=$1 apply -f k8s/
