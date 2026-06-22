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
        stage('testing credentials') {
    steps {
        withCredentials([
            usernamePassword(
                credentialsId: 'github-creds',
                usernameVariable: 'GITHUB_USER',
                passwordVariable: 'GITHUB_PASS'
            )
        ]) {
            sh '''
                echo "Username: $GITHUB_USER"
                echo "Password Length: ${#GITHUB_PASS}"
            '''
        }
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