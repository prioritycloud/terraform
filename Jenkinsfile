pipeline {
    agent any

    environment {
        AWS_REGION = 'ap-south-1'
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    echo '--- Checking out repository ---'
                    checkout scm
                }
            }
        }

        stage('Terraform Init and Apply') {
            steps {
                script {
                    echo '--- Initializing Terraform ---'
                    sh 'terraform init'

                    echo '--- Applying Terraform Changes ---'
                    sh 'terraform apply -auto-approve'
                }
            }
        }

        stage('Post Deployment') {
            steps {
                script {
                    echo '--- Performing Post-Deployment Steps ---'
                    // Add any post-deployment steps here
                }
            }
        }
    }
