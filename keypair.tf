#Resource to create a SSH private key
resource "tls_private_key" "rsa-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "shams-key-pair" {
  key_name   = "shams-key-pair"
  public_key = tls_private_key.rsa-key.public_key_openssh
}

resource "local_file" "shams-key" {
  content  = tls_private_key.rsa-key.private_key_pem
  filename = "shams-key-pair.pem"
}