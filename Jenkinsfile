pipeline {
    agent any

    stages {
        stage('Lint') {
            steps {
                sh 'hadolint Dockerfile'
            }
        }
        stage('Build & Push') {
            steps {
                sh "docker build -t nawfaltachfine/ml-microservice:${env.BUILD_NUMBER} ."
                withDockerRegistry([url: "", credentialsId: "dockerhub"]) {
                    sh "docker push nawfaltachfine/ml-microservice:${env.BUILD_NUMBER}"
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'kubectl get nodes'
            }
        }
    }
}
