pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("flask-devops-app:latest")
                }
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 5000:5000 flask-devops-app:latest'
            }
        }
        stage('push docker image') {
            steps {
                withCredentials ([usernamepassword(credentialsId: 'dockerhubcredentials', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    script {
                        sh "echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin"
                        sh "docker push mohammedsami99852/flaskapp"
                    }
                }
            }
        }
    }
}
