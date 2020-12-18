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
                sh "docker build -t nawfaltachfine/ml-microservice:${env.BUILD_TAG} ."
                withDockerRegistry([url: "", credentialsId: "dockerhub"]) {
                    sh "docker push nawfaltachfine/ml-microservice:${env.BUILD_TAG}"
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'kubectl get pods'
            }
        }
    }
}
