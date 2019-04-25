node{

    
    stage ('Clone repository'){
        git 'https://github.com/arorashivang97/Chatbot.git'
    }
    
    stage ('Build image'){

        sh 'docker build -t arorashivang97/spe-project:app .'
        //sh 'docker build -t arorashivang97/spe-project:app_mongo -f ./mongo/Dockerfile .'

    }
    
    stage ('Test image'){
        sh 'docker run arorashivang97/spe-project:app'
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
