pipeline {
    agent any
    environment {
        SERVER_IP = '192.168.0.39'
        DEPLOY_DIR = '/opt/stacks/scripts'
        CREDENTIALS_ID = 'home-intranet-server-ssh'
    }
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Lanham-Software-James/Home-Intranet-Scripts.git'
            }
        }

        stage('Copy Files to Server') {
            steps {
                sshagent(credentials: [CREDENTIALS_ID]) {
                    // Copy scripts
                    sh "scp -o StrictHostKeyChecking=no *.sh ${SERVER_IP}:${DEPLOY_DIR}/"
                }
            }
        }
    }
}
