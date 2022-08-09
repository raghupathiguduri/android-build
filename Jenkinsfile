node('slave-01') {
        stage ('checkout') {
            cleanWs()
            checkout scm
            commit_hash = sh(script: 'git rev-parse --short HEAD', returnStdout: true).trim()
            build_tag = sh(script: "echo " + "_" + commit_hash + "_" + env.BUILD_NUMBER, returnStdout: true).trim()
            echo "build_tag: " + build_tag
        }
        stage ('Cleanup of Old Build') {
                sh("flutter clean")
        }
        stage ('Flutter Build App Bundle') {
                sh("flutter packages get")
                sh("flutter build appbundle")
        }

        stage ('Flutter Build APK') {
                sh("flutter build apk")
        }
        post {
                always {
                        archiveArtifacts artifacts: 'build/app/outputs/bundle/release/*.aab , build/app/outputs/flutter-apk/*.apk' , fingerprint: true
                }
        }
}
