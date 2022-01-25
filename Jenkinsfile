pipeline {
agent any



stages {
agent any  
stage( ' Build - Maven package ' ){
                 agent any
                     steps {
                         script {
                               sh ' mvn  clean install '
                             
                          }
                        }
        }
}
}
