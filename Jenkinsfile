pipeline {
    environment { 
        registry = "nawfaltachfine/ml-microservice" 
        registryCredential = 'nawfaltachfine' 
        dockerImage = '' 
    }
    agent any

    stages {
        stage('Lint') {
            steps {
                sh 'hadolint Dockerfile'
            }
        }
        stage('Build & Push') {
            steps {
                sh 'docker build -t nawfaltachfine/ml-microservice:2.0 .'
                sh 'docker login && docker push nawfaltachfine/ml-microservice:2.0'
            }
        }
        stage('Deploy') {
            steps {
                sh 'kubectl get pods'
            }
        }
    }
}
