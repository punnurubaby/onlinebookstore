pipeline {
    agent any
	stages{
	stage('test'){
	         steps{
			sh 'mvn test'
		  }
	}
	
	
        stage('package'){
	            steps{
		    sh'mvn package'
	}
}
	}
}
