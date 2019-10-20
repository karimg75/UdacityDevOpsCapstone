pipeline {
  agent any
  stages {

    stage('1: Say Hello - Build init ') {
      steps {
        sh 'echo "Hello World "'
        sh '''
                  echo "Multi-line works too!"
                  ls -lrtha
                '''
      }
    }

    stage('2: Git Clone') {
      steps {
        git 'https://github.com/karimg75/UdacityDevOpsCapstone'
      }
    }

  }
}








    

    







