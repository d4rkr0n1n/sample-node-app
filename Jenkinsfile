
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
        sh "kill -9 $(lsof -i :3001 | grep 3001 | awk '{print $2}')"
        sh 'JENKINS_NODE_COOKIE=dontKillMe PORT=3001 nohup npm run start &'
        sh "kill -9 $(lsof -i :3002 | grep 3002 | awk '{print $2}')"
        sh 'JENKINS_NODE_COOKIE=dontKillMe PORT=3002 nohup npm run start &'
      }
    }
  }
}
