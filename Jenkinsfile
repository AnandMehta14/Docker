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
     }
}
