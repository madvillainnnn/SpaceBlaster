output "instance_public_ip" {
  description = "IP pública de la instancia EC2"
  value       = aws_instance.web.public_ip
}

output "alb_dns_name" {
  description = "DNS del balanceador de carga"
  value       = aws_lb.web.dns_name
}