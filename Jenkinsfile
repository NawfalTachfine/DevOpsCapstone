pipeline {
    environment {
        DOCKERHUB_PWD = credentials('dockerhub.Password')
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
                sh 'docker login -u nawfaltachfine -p $DOCKERHUB_PWD'
                sh 'docker push nawfaltachfine/ml-microservice:2.0'
            }
        }
        stage('Deploy') {
            steps {
                sh 'kubectl get pods'
            }
        }
    }
}
