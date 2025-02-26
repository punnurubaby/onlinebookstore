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
		stage (SonarQube){
			steps{
				mvn clean verify sonar:sonar \
  -Dsonar.projectKey=appproject \
  -Dsonar.host.url=http://3.110.31.188:9000 \
  -Dsonar.login=sqp_5164a3fd621464d2c755e0df17238d2f51c4e834
	

		
	}
}
	
