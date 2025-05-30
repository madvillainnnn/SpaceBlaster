# SpaceBlaster
SpaceBlaster Deployment
   Proyecto final para desplegar una aplicación web en AWS usando Terraform y Docker.
   
Requisitos:
AWS CLI configurado con credenciales.
Terraform instalado.
Docker instalado.
Git instalado.

Instrucciones:

Clona el repositorio: git clone https://github.com/tu_usuario/SpaceBlaster.git
cd SpaceBlaster
Asegúrate de tener las imágenes galaxy.jpg y galaxy2.jpg en app/static/.
Dale permisos al script de despliegue:chmod +x deploy.sh
Ejecuta el script para desplegar todo:./deploy.sh
Accede a la app en la URL proporcionada al final del script (IP pública o DNS del balanceador).

Notas:
La app es un juego web simple en Flask.
La infraestructura incluye una VPC, subnet, internet gateway, security group, EC2 (Ubuntu, t3.small), y un balanceador de carga.
Para redundancia, puedes agregar otra subnet en una AZ diferente y configurar Auto Scaling (no implementado aquí).
La clave SSH se genera automáticamente (mi_llave.pem).

Limpieza
   Para destruir la infraestructura:
cd terraform
terraform destroy -auto-approve

