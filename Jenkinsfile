
pipeline {
  agent any
    
  tools {nodejs "node"}

  stages {
     
    stage('Build') {
      steps {
        sh 'pwd'
        sh 'npm install'
      }
    }  
            
    stage('Deploy') {
      steps {
        sh 'npm start'
      }
    }
  }
}
