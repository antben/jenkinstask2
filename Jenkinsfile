pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning repository...'
                checkout scm
            }
        }

        stage('Run Script') {
            steps {
                echo 'Running hello.sh...'
                sh 'bash hello.sh'
            }
        }
    }

    post {
        success {
            echo 'Build succeeded!'
            mail to: 'antonbeniles@gmail.com',
                 subject: "SUCCESS: Jenkins Build #${env.BUILD_NUMBER}",
                 body: """Build #${env.BUILD_NUMBER} completed successfully.

Job: ${env.JOB_NAME}
Build URL: ${env.BUILD_URL}

Console Output: ${env.BUILD_URL}console"""
        }

        failure {
            echo 'Build failed!'
            mail to: 'antonbeniles@gmail.com',
                 subject: "FAILED: Jenkins Build #${env.BUILD_NUMBER}",
                 body: """Build #${env.BUILD_NUMBER} failed.

Job: ${env.JOB_NAME}
Build URL: ${env.BUILD_URL}

Check console output: ${env.BUILD_URL}console"""
        }
    }
}