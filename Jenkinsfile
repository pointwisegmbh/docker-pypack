pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'git@github.com:pointwisegmbh/pw-android-sdk.git', branch: 'master')
        sh '''git submodule update --init --recursive

./gradlew clean testapp:assembleProd'''
      }
    }
  }
  environment {
    ANDROID_HOME = '/opt/sdk_linux'
  }
}