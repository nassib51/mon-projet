pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'git@github.com:nassib51/mon-projet.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Deploy') {
            steps {
                sh 'cp target/mon-projet-1.0-SNAPSHOT.war ~/tomcat10/webapps/'
            }
        }
    }
}
