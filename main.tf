resource "aws_instance" "cloud-init" {
  ami           = local.instance_ami
  instance_type = var.instance_type

  # Attach the security group
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  # Inject your cloud-init YAML file
  user_data = file("cloud-init.yml")
  
  # Trigger replacement if YAML changes
  user_data_replace_on_change = true
}

resource "aws_security_group" "web_sg" {
  name        = "nginx-web-sg"
  description = "Allow HTTP and SSH inbound traffic"

  ingress {
    description = "HTTP from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
