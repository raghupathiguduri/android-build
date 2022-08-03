pipeline {
    
    agent any
    
    stages {
        
        stage ('Flutter Build App Bundle') {
            steps {
                sh "pwd"
                sh "flutter build appbundle"
            }
        }

        stage ('Flutter Build APK') {
            steps {
                sh "flutter build apk"
            }
        }

        stage ('Cleanup') {
            steps {
                sh "flutter clean"
            }
        }
    }
}
