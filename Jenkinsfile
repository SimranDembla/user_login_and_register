pipeline { 

	environment { 

        	registry = "d17bc/sample_image" 

        	registryCredential = 'sample_id' 

        	dockerImage = '' 

    	}
	
	agent any

	stage('checkout') { // for display purposes
		steps {
  			checkout scm
		}
    	}
   
	stage('Building our image') { 
		steps {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
        	}
	}
		
	stage('Deploy our image') { 
		steps {
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
            		}
		}
        } 
	stage('Results') {
        	echo 'ty'
    }

}
