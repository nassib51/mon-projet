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

        stage('Deploy to Tomcat') {
            steps {
                // NOTE IMPORTANTE : Ce step nécessite l'installation du plugin "Deploy to Container Plugin"
                // Ce step déploie le fichier .war sur l'instance Tomcat spécifiée.
                deploy adapters: [
                    // Configuration de l'adaptateur Tomcat
                    tomcat8(
                        // L'ID du Credential stockant l'utilisateur et le mot de passe du Manager Tomcat
                        credentialsId: 'tomcat-manager-credentials', 
                        // L'URL de base du serveur Tomcat (sans le /manager/html)
                        url: 'http://172.22.76.250:8089/' 
                    )
                ],
                // Chemin vers le fichier WAR à déployer (par défaut : target/*.war)
                war: 'target/mon-projet-1.0-SNAPSHOT.war' 
            }
        }
    }
}
