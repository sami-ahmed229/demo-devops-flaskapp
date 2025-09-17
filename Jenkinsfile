pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("mohammedsami99852/flaskapp:v1")
                }
            }
        }
        
        stage('push docker image') {
            steps {
                withCredentials ([usernamePassword(credentialsId: 'dockerhubcredentials', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    script {
                        sh "echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin"
                        sh "docker push mohammedsami99852/flaskapp"
                    }
                }
            }
        }
    }
}
