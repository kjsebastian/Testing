node {
    def app
    
    stage('Clone repository') {
        checkout scm
    }

    stage('Build Image') {
       app = docker.build("kjsebastian1/capstone")
    }


    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            app.push("${env.BUILD_NUMBER}")
            app.push('latest')
        }
    } 
    
        stage('Deployment') {
	    sh 'ls'
	    sh 'helm version'
	    sh '/usr/sbin/helm upgrade capstone ./capstone/'
    }
}    
