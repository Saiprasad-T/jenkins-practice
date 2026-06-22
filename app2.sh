pipeline {

    agent any

    stages {

        stage('Build') {
            steps {
                echo 'Building Applications'
                sh 'date'
                sh 'hostname'
            }
        }

        stage('Test') {
            steps {
                echo 'Running Tests'
                sh 'java -version'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Application'
                sh 'echo Deployment Successful'
            }
        }

    }
}