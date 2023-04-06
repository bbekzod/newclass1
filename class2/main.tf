

resource "aws_key_pair" "class2" {
  key_name   = "class2"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_security_group" "class2" {
  name        = "class2"
  description = "Allow TLS inbound traffic"


  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}




resource "aws_ebs_volume" "class2" {
  availability_zone = "us-east-1a"
  size              = 40
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdb"
  volume_id   = aws_ebs_volume.class2.id
  instance_id = aws_instance.web.id
}




resource "aws_instance" "web" {
  ami                         = "ami-06e46074ae430fba6" # us-east-1
  instance_type               = "t3.micro"
  associate_public_ip_address = true
  availability_zone           = "us-east-1a"
  key_name                    = aws_key_pair.class2.key_name
  vpc_security_group_ids = [
    aws_security_group.class2.id,
  ]
}

resource "aws_instance" "web2" {
  ami                         = "ami-06e46074ae430fba6" # us-east-1
  instance_type               = "t3.micro"
  associate_public_ip_address = true
  availability_zone           = "us-east-1a"
  key_name                    = aws_key_pair.class2.key_name
  vpc_security_group_ids = [
    aws_security_group.class2.id,
  ]
}














# resource "aws_route53_record" "class2" {
#   allow_overwrite = true
#   zone_id         = var.zone_id
#   name            = "blog.${var.domain}"
#   type            = "A"
#   ttl             = 300
#   records         = [aws_instance.web.public_ip]
# }

# variable "zone_id" {}
# variable "domain" {}


