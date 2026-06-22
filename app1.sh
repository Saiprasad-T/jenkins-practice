pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                echo 'Building Application'
            }
        }

        stage('Test') {
            steps {
                echo 'Running Tests1'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Application'
            }
        }

    }
}