#!groovy

node {

      stage('checkout') { // for display purposes
	checkout scm
    }
    stage('build') {
        echo "Hello World!"
        sh "docker build -t testing_image:latest ."
        sh "docker run -d -p 8000:8000 testing_image:latest"
	sh "docker pull d17bc/testing_image"
    }
    stage('Results') {
        echo 'ty'
    }

}
