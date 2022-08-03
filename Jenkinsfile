pipeline {
    
    agent any
    
    stages {
        
        stage ('Cleanup of Old Build') {
            steps {
                sh "flutter clean"
            }
        }
        
        stage ('Flutter Build App Bundle') {
            steps {
                sh "flutter packages get"
                sh "flutter build appbundle"
            }
        }

        stage ('Flutter Build APK') {
            steps {
                sh "flutter build apk"
            }
        }
    }
}
