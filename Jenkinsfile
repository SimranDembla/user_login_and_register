#!groovy

node {

environment { 

        registry = "d17bc/sample_image" 

        registryCredential = 'sample_id' 

        dockerImage = '' 

    }
	stage('checkout') { // for display purposes
  		checkout scm
    }
   
	stage('Building our image') { 
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
        }
		
	stage('Deploy our image') { 

                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
            }
        } 
	stage('Results') {
        	echo 'ty'
    }

}
