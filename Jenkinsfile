pipeline {
    agent { docker 'maven:3.3-jdk-8' }
    stages {
        stage('mvn-build') {
            steps {
                sh 'mvn install'
            }
        }
        stage('copy') {
            steps {
                sh 'cp target/SOAP-WebService-1.0-SNAPSHOT.jar .'
            }
        }
        stage('docker-build') {
            steps {
                sh 'docker build -t soap .'
            }
        }
        stage('docker-run') {
            steps {
                sh 'docker run -d -p 8081:8085 soap'
            }            

        }
    }
}
