output "public_ip" {
  description = "The public IP address of the NGINX EC2 instance"
  value       = aws_instance.cloud-init.public_ip
}

output "nginx_url" {
  description = "The direct HTTP URL to access the NGINX site"
  value       = "http://${aws_instance.cloud-init.public_ip}"
}