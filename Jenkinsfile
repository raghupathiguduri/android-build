node('slave-01') {
        stage ('Cleanup of Old Build') {
            step {
                sh "flutter clean"
            }
        }
        
        stage ('Flutter Build App Bundle') {
            step {
                sh "flutter packages get"
                sh "flutter build appbundle"
            }
        }

        stage ('Flutter Build APK') {
            step {
                sh "flutter build apk"
            }
        }
    
        post {
           always {
              archiveArtifacts artifacts: 'build/app/outputs/bundle/release/*.aab , build/app/outputs/flutter-apk/*.apk' , fingerprint: true
        }
    }
}
