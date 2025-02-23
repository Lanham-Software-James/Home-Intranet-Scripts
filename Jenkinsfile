pipeline {
    agent any
    environment {
        USER = 'jenkins'
        SERVER_IP = 'home-intranet'
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
                    sh "scp -o StrictHostKeyChecking=no *.sh ${USER}@${SERVER_IP}:${DEPLOY_DIR}/"
                }
            }
        }
    }
}
