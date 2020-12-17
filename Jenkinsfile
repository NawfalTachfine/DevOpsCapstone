pipeline {
    environment { 
        registry = "nawfaltachfine/ml-microservice" 
        registryCredential = 'nawfaltachfine' 
        dockerImage = '' 
    }
    agent any

    stages {
        stage('Lint') {
            steps {
                sh 'hadolint Dockerfile'
            }
        }
        stage('Build') {
            script { 
                dockerImage = docker.build registry + ":$BUILD_NUMBER" 
            }
        }
        stage('Push') {
            script { 
                docker.withRegistry( '', registryCredential ) { 
                    dockerImage.push() 
                }
            } 
            //steps {
            //    sh 'docker build -t nawfaltachfine/ml-microservice:2.0 .'
            //    sh 'docker push nawfaltachfine/ml-microservice:2.0'
            //}
        }
        stage('Deploy') {
            steps {
                sh 'kubectl get pods'
            }
        }
    }
}
