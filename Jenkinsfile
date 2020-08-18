pipeline {

environment { 

        registry = "d17bc/sample_image" 

        registryCredential = 'sample_id' 

        dockerImage = '' 

    }
      stage('checkout') { // for display purposes
	steps {
		script {
        		checkout scm
		}
	}
    }
   
	stage('Building our image') { 
            steps { 

                script { 
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                }
            } 
        }
		
	stage('Deploy our image') { 

            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
        } 
    stage('Results') {
        echo 'ty'
    }

}
