#!/bin/bash

# Terraform'ı başlat
terraform init

# Terraform'u çalıştır ve cluster oluştur
terraform apply -auto-approve
