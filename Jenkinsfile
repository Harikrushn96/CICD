pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    stages {
        stage ('Git') {
            steps {
                git branch: 'main', url: 'https://github.com/Harikrushn96/CICD.git'
            }
        }
        stage ('Build') {
            steps {
                sh 'mvn clean install package'
            }
        }
        stage ('docker build') {
            steps {
                sh 'docker build -t first:latest .'
            }
        }
        stage ('PushtoNexus') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'nexus-token', url: 'http://44.201.201.144:8081/repository/dockerimg/') {
                        sh 'docker push first:latest'
                    }
                }
            }
        }
    }
}
