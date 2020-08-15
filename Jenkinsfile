#!groovy

node {

      stage('checkout') { // for display purposes
	checkout scm
    }
    stage('build') {
        echo "Hello World!"
        sh "docker build -t dnj15aug:20 ."
        sh "docker run -d -p 8000:8000 dnj15aug:20"
    }
    stage('Results') {
        echo 'ty'
    }

}
