
pipeline {
  agent any
    
  stages {
     
    stage('Build') {
      steps {
        sh 'pwd'
        sh 'npm install'
        sh 'sudo npm install forever -g'
      }
    }  
            
    stage('Deploy') {
      steps {
        sh 'node index.js &'
      }
    }
  }
}
