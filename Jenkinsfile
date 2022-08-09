pipeline {
    agent { label 'android'}
    stages {
        stage('Checkout') {
            steps {
                cleanWs()
                checkout scm
            }
        }
        stage('Cleanup of Old Build') {
            steps {
                sh "flutter clean"
            }
        }
        stage('Flutter Build App Bundle') {
            steps {
                sh "flutter packages get"
                sh "flutter build appbundle"
            }
        }
        stage('Flutter Build APK') {
            steps {
                sh "flutter build apk"
            }
        }
        stage('Artifact Store') {
            steps {
                script {
                    def commit_hash = sh(script: 'git rev-parse --short HEAD', returnStdout: true).trim()
                    def build_tag = sh(script: "echo " + commit_hash + "_" + env.BUILD_NUMBER, returnStdout: true).trim()
                    echo "build_tag: " + build_tag
                }
                sh "cp build/app/outputs/bundle/release/*.aab ${build_tag}.aab"
                sh "cp -r build/app/outputs/flutter-apk/*.apk ${build_tag}.apk"
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'build/app/outputs/bundle/release/*.aab , build/app/outputs/flutter-apk/*.apk , *.aab , *.apk' , fingerprint: true
        }
    }
}
