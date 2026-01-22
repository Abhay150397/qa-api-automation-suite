pipeline {
    agent any

    tools {
        nodejs "NodeJS"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install Newman') {
            steps {
                sh 'npm install -g newman newman-reporter-html'
            }
        }

        stage('Run API Tests (Newman)') {
            steps {
                sh '''
                newman run "collections/ReqRes API Test Suite.postman_collection.json" \
                  -r cli,html \
                  --reporter-html-export reports/newman-report.html
                '''
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'reports/**', fingerprint: true
        }
