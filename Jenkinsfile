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
                sh "kubectl get nodes"
                sh "kubectl set image deployment/ml-microservice nawfaltachfine=nawfaltachfine/ml-microservice:${env.BUILD_NUMBER} --record"
                sh "kubectl rollout status deployment/ml-microservice"
            }
        }
    }
}
