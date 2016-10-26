node('docker'){
    stage('maven checkout'){
      checkout scm
    }

    stage('maven build'){
      writeFile file: 'settings.xml', text: "<settings><localRepository>${pwd()}/.m2repo</localRepository></settings>"
      // TODO: implement
    }

    stage('docker build'){
      // TODO: implement
    }

    stage('deploy'){
      // TODO: implement
    }

    stage('frontend tests'){
      def urlMap = readFile('./urlMap')
      dir('tests'){
        sh 'mkdir -p .yarn-cache'
        def yarnMapping = '-u root:root -v $PWD/.yarn-cache:/.yarn-cache'
        docker.image('kkarczmarczyk/node-yarn:6.7-slim').inside(yarnMapping){
          sh 'yarn install'
        }
        // TODO: implement running of tests
      }
    }

    stage('teardown'){
      // TODO: implement
    }
}
