// pipeline {
//     agent any
//     stages {
//         stage('Terraform Deploy') {
//             environment {
//                 AWS_ACCESS_KEY_ID = credentials(785959824311).AWS_ACCESS_KEY_ID
//                 AWS_SECRET_ACCESS_KEY = credentials(785959824311).AWS_SECRET_ACCESS_KEY
//             }
//             steps {
//                 sh 'terraform init'
//                 sh 'terraform plan'
//                 sh 'terraform apply -auto-approve'
//             }
//         }
//     }
// }







pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        // stage('Terraform Plan') {
        //     steps {
        //         sh 'terraform plan'
        //     }
        // }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}