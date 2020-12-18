pipeline {
    environment {
        DOCKERHUB_PWD = credentials('dockerhub')
    }
    agent any

    stages {
        stage('Lint') {
            steps {
                sh 'hadolint Dockerfile'
            }
        }
        stage('Build & Push') {
            //steps {
                def image = docker.build('nawfaltachfine/ml-microservice:2.0')
                image.push()
                //sh 'docker build -t nawfaltachfine/ml-microservice:2.0 .'
                //sh 'echo $DOCKERHUB_PWD'
                //sh 'docker login -u nawfaltachfine -p $DOCKERHUB_PWD'
                //sh 'docker push nawfaltachfine/ml-microservice:2.0'
            //}
        }
        stage('Deploy') {
            steps {
                sh 'kubectl get pods'
            }
        }
    }
}
