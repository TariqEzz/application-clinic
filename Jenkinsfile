pipeline   {
agent any



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

   }
            }
