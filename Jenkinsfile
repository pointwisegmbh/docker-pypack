pipeline {
  agent {
    node {
      label 'node1'
    }

  }
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/pointwisegmbh/pw-android-sdk.git', branch: 'master')
        sh '''git submodule update --init --recursive

./gradlew clean testapp:assembleProd'''
      }
    }
  }
  environment {
    ANDROID_HOME = '/opt/sdk_linux'
  }
}