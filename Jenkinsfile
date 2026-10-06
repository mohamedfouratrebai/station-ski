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

        stage('Tests Maven') {
            steps {
                sh 'mvn clean test'
            }
        }

        stage('Analyse SonarQube') {
            steps {
                withSonarQubeEnv('SonarQube') {
	sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:sonar -Dsonar.projectKey=station-ski'
                }
            }
        }

        stage('Package Maven') {
            steps {
                sh 'mvn package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t station-ski:1.0 .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm station-ski:1.0'
            }
        }
    }

    post {
        success {
            echo 'Pipeline Station Ski terminé avec succès !'
        }

        failure {
            echo 'Erreur dans le pipeline Station Ski.'
        }
    }
}
