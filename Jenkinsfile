pipeline {
    agent any
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'main', url: 'https://github.com/Mikky3554/samplek8s.git'
          }
        }
        stage('Execute Maven') {
           steps {
                sh 'mvn clean package'             
          }
        }
 }
}
