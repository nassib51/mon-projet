pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // S'assure de récupérer le code source
                git branch: 'main',
                    url: 'git@github.com:nassib51/mon-projet.git',
                    credentialsId: 'jenkins-github-key'
            }
        }

        stage('Build') {
            steps {
                // Génère le fichier .war dans le répertoire 'target/'
                sh 'mvn clean package'
            }
        }

        
    }
}
