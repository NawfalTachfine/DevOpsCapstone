pipeline {
    agent any

    stages {
        stage('Lint') {
            steps {
                sh 'hadolint Dockerfile'
            }
        }
        stage('Build & Push') {
            dockerImage = docker.build("nawfaltachfine/ml-microservice:2.0")
            dockerImage.push()
            //steps {
            //    sh 'docker build -t nawfaltachfine/ml-microservice:2.0 .'
            //    sh 'docker push nawfaltachfine/ml-microservice:2.0'
            //}
        }
        stage('Deploy') {
            steps {
                sh 'kubectl'
            }
        }
    }
}
