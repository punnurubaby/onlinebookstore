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
		stage (SonarQube){
			steps{
			withSonarQubeEnv('SonarQube'){
			sh "mvn clean verify sonar:sonar \
  -Dsonar.projectKey=appproject \
  -Dsonar.host.url=http://13.233.125.148:9000/ \
  -Dsonar.login=sqp_5164a3fd621464d2c755e0df17238d2f51c4e834"
			}
			}
		}
		stage('Build') {
                 steps {
                  sh 'mvn clean package'
            }
        }
	

		
	}
}
	
