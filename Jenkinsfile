pipeline {
    agent any

    stages {
        stage('Terraform Code Download') {
            steps {
                // Get our terraform code from the repository
                git 'https://github.com/adesoji-blick/devopsbootcamp2021.git'
                // List current contents.
                sh "ls -ltr"
            }
        }
        stage('Run Terraform Init') {
        environment {
            AWS_ACCESS_KEY_ID     = credentials ('AWS_ACCESS_KEY_ID')
            AWS_SECRET_ACCESS_KEY = credentials ('AWS_SECRET_ACCESS_KEY')
            AWS_DEFAULT_REGION    = credentials ('AWS_DEFAULT_REGION')
        }    
            steps {
                // Initialize terraform backend
                sh "printenv"
                sh "terraform init"
            }
        }
        stage('Run Terraform Plan') {
            steps {
                // Run terraform plan
                sh "export AWS_ACCESS_KEY_ID='AKIA2BIKEJVYVNAPU2EN' \
                && export AWS_SECRET_ACCESS_KEY='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' \
                && export AWS_DEFAULT_REGION='ca-central-1' \
                && terraform plan"
            }
        }
        stage('Get Approval') {
            steps {
               script {
                  def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply Terraform', name: 'confirm'] ]) 
               }
            }
        } 
        stage('Apply Terraform Code') {
            steps {
                // Run terraform apply
                sh "export AWS_ACCESS_KEY_ID='AKIA2BIKEJVYVNAPU2EN' \
                && export AWS_SECRET_ACCESS_KEY='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' \
                && export AWS_DEFAULT_REGION='ca-central-1' \
                && terraform apply --auto-approve"
            }
        }
    }
}