pipeline {
    agent any
	stages{
	   stage(GitCheckout){
	       steps{
		    git branch: 'J2EE' , url: 'https://github.com/punnurubaby/onlinebookstore.git/'
		     }
	   }
	     stage('Build') {
                 steps {
                  sh 'mvn clean package'
            }
        }
		   stage('test'){
	         steps{
			sh 'mvn test'
		  }
	     }
	

		
	}
}
	
