/* Requires the Docker Pipeline plugin */
pipeline {
  agent { docker 'ruby'}
  stages {
    stage('build') {
      steps {
        sh 'ruby --version'
      }
    }
  }
}
