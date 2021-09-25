def dockerImage

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    dockerImage = docker.build("magicmonster/devops-tools")
                }
            }
        }
        stage('Publish') {
            steps {
                echo 'Pushing to registry'
                script {
                    docker.withRegistry('', 'dockerhub') {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
