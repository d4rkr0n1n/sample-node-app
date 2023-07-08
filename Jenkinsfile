
pipeline {
  agent any
    
  stages {
     
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }  
            

    stage('Deploy') {
      steps {
        sh 'chmod +x run.sh'
        sh "bash run.sh 3001 && bash run.sh 3002"
      }
    }
  }
}
