provider "aws" {
  region = "us-east-1"  # Bölgenizi güncelleyin
}

resource "aws_security_group" "k3s_sg" {
  name        = "k3s_sg"
  description = "Security group for k3s cluster"
  vpc_id      = "vpc-0f877a7ca7e8ce1eb"  # VPC ID'nizi buraya ekleyin

  # Inbound Rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH access"
  }

  ingress {
    from_port   = 6443
    to_port     = 6443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "k3s API server"
  }

  ingress {
    from_port   = 30080
    to_port     = 30080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "NodePort service for frontend"
  }

  # Outbound Rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }
}

resource "aws_instance" "k3s" {
  ami           = "ami-0866a3c8686eaeeba"  # AMI ID'sini güncelleyin (bu örnek Ubuntu için)
  instance_type = "t2.micro"
  security_groups = [aws_security_group.k3s_sg.name]

  tags = {
    Name = "k3s-cluster"
  }

  user_data = <<-EOF
              #!/bin/bash
              curl -sfL https://get.k3s.io | sh -
              EOF
}

output "instance_ip" {
  value = aws_instance.k3s.public_ip
}
