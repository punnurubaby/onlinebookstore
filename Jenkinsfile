pipeline {
    agent any
	stages{
	stage('test'){
	         steps{
			sh 'mvn test'
		  }
	}
	stage('SonarQube'){
		        steps{
			withSonarQubeEnv('SonarQube')
		       {
		sh "mvn clean verify sonar:sonar \
                -Dsonar.projectKey=appproject \
                -Dsonar.host.url=http://65.2.38.115:9000 \
                -Dsonar.login=sqp_d2dc3eb443a44a991bdc26b27185f719afd4fa24"
				}
     }
}
stage('package'){
	steps{
		sh'mvn package'
	}
}
	}
}
