#!/bin/bash

# Terraform çıktısını al
instance_ip=$(terraform output -raw instance_ip)

# k3s cluster'ına SSH ile bağlan ve kubeconfig dosyasını al
ssh -o StrictHostKeyChecking=no -i /path/to/your/private/key ec2-user@$instance_ip "sudo cat /etc/rancher/k3s/k3s.yaml" > kubeconfig.yaml

# Kubeconfig dosyasını düzenle
sed -i "s/127.0.0.1/$instance_ip/g" kubeconfig.yaml
