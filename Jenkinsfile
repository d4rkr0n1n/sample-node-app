
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
        sh 'chmod +x run.sh'
        sh 'JENKINS_NODE_COOKIE=dontKillMe nohup npm start &'
      }
    }
  }
}
