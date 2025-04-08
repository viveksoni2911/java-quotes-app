@Library('Shared') _
pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git url: 'https://github.com/viveksoni2911/java-quotes-app.git'
            }
        }
        stage('Docker build') {
            steps {
                sh 'docker build -t java-notes-app .'
            }
        }
        stage('Push to DockerHub') {
            steps {
                script{
                    pushToDockerHub()
                }
            }
        }
        // stage('Docker Container') {
        //     steps {
        //         // sh 'docker run -d -p 8000:8000 java-notes-app:latest'
        //     }
        // }
        
    }
}
