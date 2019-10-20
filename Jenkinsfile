pipeline {
  environment {
    registry = "karimg75/testgreenimage"
    registryCredential = 'docker'
    dockerImage = ''
  }
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
        git 'https://github.com/karimg75/UdacityDevOpsCapstone.git'
      }
    }

    stage('3: Lint HTML') {
      steps {
        sh 'tidy -q -e green/ws/index.html'
      }
    }

    stage('4: Docker Image') {
      steps {
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }

  }
}
