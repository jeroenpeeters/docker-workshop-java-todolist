node('docker'){
    stage('maven checkout')
    checkout scm
    
    stage('maven build')
    writeFile file: 'settings.xml', text: "<settings><localRepository>${pwd()}/.m2repo</localRepository></settings>"
    docker.image('maven:3.3.3-jdk-8').inside {
        sh 'mvn -s settings.xml clean package'
    }
    sh 'ls -al todolist-web-servlet-jsp/target/'
    
    stage('docker build')
    image = docker.build('todo')
    
    stage('deploy')
    sh 'docker-compose up -d'
    sh 'docker-compose port web 8080 > portmapping'
    def port = readFile 'portmapping'
    echo "port is ${port}"
}
