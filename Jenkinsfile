node{

    
    stage ('Clone repository'){
        git 'https://github.com/arorashivang97/Chatbot.git'
    }
    
    stage ('Build image'){

        sh 'docker build -t arorashivang97/spe-project:app .'
        //sh 'docker build -t arorashivang97/spe-project:app_mongo -f ./mongo/Dockerfile .'

    }
    
    stage ('Test image'){
        sh 'docker run -it arorashivang97/spe-project:app /bin/bash'
        sh 'npm test'
        sh 'mocha ./test/test.js --reporter spec --timeout 5000' 
    }
    
    /*stage ('Push image'){
        withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) 
        {
            sh 'docker push arorashivang97/spe-project:app'
            sh 'docker push arorashivang97/spe-project:app_mongo'
        }

    }
    stage ('Build Rundeck job'){
        build job: 'Bank2'
    }*/

}




/*
pipeline {
    agent any 
    stages {
		stage('Build docker'){
			steps {
				sh 'docker build -t arorashivang97/docker-test1 .'
			}
		}
		stage('Push to hub'){
			steps {
				sh 'docker push arorashivang97/docker-test1'
			}
		}
    }
<<<<<<< HEAD
}
=======
} 
*/
