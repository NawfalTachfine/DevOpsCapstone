pipeline {
    agent any

    stages {
        stage('Lint') {
            steps {
                hadolint Dockerfile
            }
        }
        stage('Build') {
            steps {
                docker build -t nawfaltachfine/ml-microservice .
            }
        }
        stage('Push') {
            steps {
                docker push nawfaltachfine/ml-microservice
            }
        }
    }
}
