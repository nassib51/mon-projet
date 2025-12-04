pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'git@github.com:nassib51/mon-projet.git',
                    credentialsId: 'jenkins-github-key'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Deploy') {
            steps {
                // Copier le WAR sur Tomcat
                sh 'cp target/mon-projet-1.0-SNAPSHOT.war ~/tomcat10/webapps/'
            }
        }
    }
}
