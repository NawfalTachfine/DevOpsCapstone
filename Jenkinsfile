pipeline {
    agent any

    stages {
        stage('Lint') {
            steps {
                sh 'hadolint Dockerfile'
            }
        }
        stage('Build image') {
            dockerImage = docker.build("nawfaltachfine/ml-microservice:v2.0")
        }
        stage('Push image') {
            dockerImage.push()
        }  
        stage('Deploy') {
            steps {
                echo 'wesh'
            }
        }
    }
}
