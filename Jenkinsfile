pipeline {
    agent any

    stages {

        stage('Récupération du code source') {
            steps {
                checkout scm
            }
        }

        stage('Date système') {
            steps {
                sh 'date'
            }
        }

        stage('Tests') {
            steps {
                sh 'mvn clean test'
            }
        }
    }
}
