pipeline {
  agent any
  stages {
    stage('1st Stage: Say Hello - Build init ') {
      steps {
        sh 'echo "Hello World "'
        sh '''
                  echo "Multi-line works too!"
                  ls -lrtha
                '''
      }
    }

    stage('3rd Stage: Upload to AWS') {
      steps {
        withAWS(region: 'us-west-2', credentials: 'aws-static') {
          s3Upload(bucket: 'jenkins-karim', file: 'green/ws/*')
        }

      }
    }
  }
}
