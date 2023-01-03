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
                sh 'docker build -t 44.201.201.144:8083/first:latest .'
            }
        }
        stage ('PushtoNexus') {
            steps {
                script {
                    sh '''
                        docker login -u admin -p admin123 44.201.201.144:8083
                        docker push 44.201.201.144:8083/first:latest
                        '''
                    }
                }
            }
        }
    }
