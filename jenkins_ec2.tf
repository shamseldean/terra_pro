resource "aws_instance" "Deployment_server" {
    ami                    = "ami-01cbb63e05938987e"                      
    instance_type          = "t2.micro"
    subnet_id              = aws_subnet.public-subnet-terraform.id
    key_name               = aws_key_pair.shams-key-pair.id
    vpc_security_group_ids = [aws_security_group.pub_security_gr_project.id]

    user_data = <<-EOF
                            #!/bin/bash 
                            echo '${tls_private_key.rsa-key.private_key_pem}'  > /home/ubuntu/shams-key/shams-key-pair.pem
                            chmod 400 shams-key-pair.pem
                            chmod 400 shams-key
                            sudo apt update
                            
                            


                            EOF

    tags = {
        Name = "jenkins_server_project"
    }
}