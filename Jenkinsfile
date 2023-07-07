
pipeline {
  agent any
    
  stages {
     
    stage('Build') {
      steps {
        sh 'pwd'
        sh 'npm install'
        sh 'npm install forever -g'
      }
    }  
            
    stage('Deploy') {
      steps {
        sh 'node index.js &'
      }
    }
  }
}
