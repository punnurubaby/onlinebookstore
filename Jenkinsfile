pipeline {
    agent any
	stages{
	   stage(GitCheckout){
	       steps{
		    git branch: 'J2EE' , url: 'https://github.com/punnurubaby/onlinebookstore.git/'
		     }
	   }
		   stage('test'){
	         steps{
			sh 'mvn test'
		  }
	     }
	

		
	}
}
	
