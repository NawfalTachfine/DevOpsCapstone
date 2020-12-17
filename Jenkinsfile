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
                sh 'docker build -t nawfaltachfine/ml-microservice .'
                sh 'docker push nawfaltachfine/ml-microservice'
            }
        }
        stage('Deploy') {
            steps {
                echo 'wesh'
            }
        }
    }
}
