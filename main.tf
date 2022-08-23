terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}



provider "aws" {
  region  = "us-west-1"
}

resource "aws_instance" "proyectov2" {
  ami           = "ami-0ce5f1dfb1df70094"
  instance_type = "t2.micro"
  security_groups= ["default"]
  key_name= "proyectoV2California"

  tags = {
    Name = "proyectoV2"
  }
}
output "instance_public_ip" {
  description = "Obtener la IP publica de mi instancia"
  value = aws_instance.proyectov2.public_ip  // aws_instance.$NOMBRE-RECURSO-TIPO-aws_instance$.public_ip
}
