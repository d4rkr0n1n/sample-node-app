pipeline {
  agent any
    
  tools {nodejs "node"}
    
  stages {
     
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }  
            
    stage('Deploy') {
      steps {
        sh 'node index.js'
      }
    }
  }
}
