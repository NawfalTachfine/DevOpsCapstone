pipeline {
    environment {
        //DOCKERHUB_PWD = credentials('dockerhub:password')
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
                //def image = docker.build('nawfaltachfine/ml-microservice:2.0')
                //image.push()
                sh 'docker build -t nawfaltachfine/ml-microservice:2.0 .'
                withDockerRegistry([url: "", credentialsId: "dockerhub"]) {
                    sh "docker push nawfaltachfine/ml-microservice:2.0"
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
