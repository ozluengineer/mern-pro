#!/bin/bash

# Terraform sürümünü ayarlayın
TERRAFORM_VERSION="1.9.8"

# Terraform'u indirin
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# İndirilen dosyayı açın
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Terraform'u sistem path'ine taşıyın
sudo mv terraform /usr/local/bin/

# Terraform sürümünü kontrol edin
terraform -version
