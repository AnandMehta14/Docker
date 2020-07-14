pipeline {
     agent any
     
     stages {
          
          stage('Git Clone') {
               steps {
                    git 'https://github.com/AnandMehta14/Docker.git'
               }
          }
         
          stage('Build') {
               steps {
                    sh 'mvn -Dmaven.test.failure.ignore=true clean package'
               }
          } 
          
          stage('Build Number') {
               steps {
                   echo "Build_Number:$BUILD_NUMBER"
               }
          } 
          
          
          stage('Docker Image') {
               steps {
                    sh label: '', script: '''docker build -t java-project1:$BUILD_NUMBER .
                                 docker tag java-project1:$BUILD_NUMBER mehta14/java-project1:$BUILD_NUMBER'''                               
                               //  docker push mehta14/jb-hello-world:$BUILD_NUMBER''' 
               }
          } 
     }
}
