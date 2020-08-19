pipeline { 

    environment { 

        registry = "d17bc/sample_image" 

        registryCredential = 'sample_id' 

        dockerImage = '' 

    }

    agent any 

    stages { 

       stage('Cloning our Git') { 

            steps { 

                checkout scm
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
	stage('Pulling image locally and running') {
		
		steps {
		
		  script {
	            
                     sh "docker pull d17bc/sample_image:$BUILD_NUMBER"
		     sh "docker run -d -p 8000:8000 d17bc/sample_image:$BUILD_NUMBER"
			}
		}
	}
  }

}
