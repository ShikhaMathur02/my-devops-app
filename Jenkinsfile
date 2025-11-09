pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'master', url: 'https://github.com/ShikhaMathur02/my-devops-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-devops-app .'
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // Stop if already running
                    sh 'docker rm -f my-devops-app || true'
                    sh 'docker run -d -p 3000:3000 --name my-devops-app my-devops-app'
                }
            }
        }
    }
}
