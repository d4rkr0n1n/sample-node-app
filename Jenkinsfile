
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
        sh 'JENKINS_NODE_COOKIE=dontKillMe PORT=3001 nohup npm run restart &'
        sh 'JENKINS_NODE_COOKIE=dontKillMe PORT=3002 nohup npm run restart &'
      }
    }
  }
}
