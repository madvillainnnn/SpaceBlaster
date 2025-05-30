#!/bin/bash

echo "🚀 Generando llaves SSH..."
ssh-keygen -t rsa -b 4096 -f mi_llave.pem -N ""

echo "🔑 Formateando archivo público..."
cp mi_llave.pem.pub ./ # Para que Terraform lo lea

echo "🔧 Iniciando Terraform..."
terraform init
terraform apply -auto-approve

echo "🌍 Infraestructura desplegada. Busca la IP en los outputs de Terraform."
