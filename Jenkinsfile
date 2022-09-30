pipeline {
    agent any

    stages {
        stage('Confirm Successfull GitPull') {
            steps {
                echo 'GitPull Success'
            }
        }
        stage('Build docker network'){
            steps {
                sh 'docker network create duo-network'
            }
        }
        stage('Build Dockerfile'){
            steps {
                sh 'docker build -t flaskapp .'
            }
        }
        stage('Build Flask container'){
            steps {
                sh 'docker run -d --network duo-network --name server flaskapp:latest'
            }
        }
        stage('Build and run nginx'){
            steps {
                sh 'docker run -d --network my-network -p 80:80 --name nginx lukebenson1/docker-networking-nginx:latest'
            }
        }

    }
}