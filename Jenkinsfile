pipeline {
agent any



stages {

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
