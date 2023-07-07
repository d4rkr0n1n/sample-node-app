
pipeline {
  agent any
    
  stages {
     
    stage('Build') {
      steps {
        sh 'pwd'
        sh 'npm install'
      }
    }  
            
    stage('Deploy') {
      steps {
        sh 'forever start index.js'
        sh 'forever list'
        sh 'node index.js'
      }
    }
  }
}
