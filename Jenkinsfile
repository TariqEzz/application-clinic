pipeline   {
agent any
environment {
     registryUrl = "testacr1989.azurecr.io"
     registryCredential = "ACR"
 }

stages {

stage( ' Build - Maven package ' ){
                 agent any
                     steps {
                         script {
                               sh ' mvn clean install -P MySQL '
                             
                                 }
                            }
                                   }
stage('Generer image docker de l app avec tomcat') 
  {      agent any 
   steps      {        
     echo 'Generating docker image'        
     sh 'docker build -t petclinic:latest .'     
              }  
   
   
   
  }

   
            

stage('Publish image to acr') {
             agent any
          steps{ 
                     script {
                         docker.withRegistry( "http://${registryUrl}", registryCredential ) {
                        dockerImage.push()} 
                }
            }
        }
}
  }
