output "toolServer-ip" {
  value = aws_instance.tool-server.*.public_ip
}

#"App Server", "Web Server", "Database Server"