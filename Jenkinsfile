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
      dir('tests'){
        sh 'mkdir -p .yarn .yarn-config .yarn-cache'
        def yarnMapping = '-v $PWD:.yarn/.yarn -v $PWD:.yarn-config/.yarn-config -v $PWD:.yarn-cache/.yarn-cache'
        docker.image('yarn').runWith(yarnMapping){
          sh 'yarn install'
        }
        // TODO: implement running of tests
      }
    }

    stage('teardown'){
      // TODO: implement
    }
}
