variable "region" {
  description = "Región de AWS para el despliegue"
  default     = "us-east-1"
  type        = string
}

variable "ami_id" {
  description = "ID del AMI para la instancia EC2"
  default     = "ami-0e86e20dae9224db8" # Ubuntu 20.04 LTS
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  default     = "t3.small"
  type        = string
}