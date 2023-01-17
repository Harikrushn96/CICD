pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    stages {
        stage ('Build') {
            steps {
                sh 'mvn clean install package'
            }
        }
        stage ('docker build') {
            steps {
                sh 'docker build -t 54.205.225.212:8083/first:latest .'
            }
        }
        stage ('PushtoNexus') {
            steps {
                script {
                    sh '''
                        docker login -u admin -p admin123 54.205.225.212:8083
                        docker push 44.201.201.144:8083/first:latest
                        '''
             }
          }
      }
   }
}
