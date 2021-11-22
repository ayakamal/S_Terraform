pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/ayakamal/S_Terraform_Demo.git'
            }

        }
        
         stage('deployment') {
            steps {
                sh 'terraform init'
                sh 'terraform workspace select ${env}'
                sh 'terraform apply -auto-approve --var-file=${env}.tfvars'
            }

        }
    }
}
