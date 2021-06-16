pipeline {
    agent any
    stages {
        stage('mvn-build') {
            steps {
                sh 'mvn install'
            }
        }
        stage('docker-build') {
            steps {
                sh 'docker build -t soap .'
            }
        }
        stage('docker-run') {
            steps {
                sh 'docker run -d -p 8081:8080 soap'
            }            

        }
    }
}
