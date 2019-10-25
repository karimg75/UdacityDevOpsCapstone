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
    stage('5:Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
          dockerImage.push()
          }
        }
      }
    }
    stage('6:Remove Unused docker image') {
      steps{
         sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
	
     stage('7: Apply kube') {
      steps {
        withAWS(credentials: 'aws-static', region: 'us-west-2') {
          echo 'Success'
          sh 'kubectl config use-context ec2-54-212-197-235.us-west-2.compute.amazonaws.com'
          sh 'kubectl apply -f ./green-controller.json'
        }

      }
    }
  }
}
