pipeline {
    agent any 

    stages {
        stage ('git checkout')
        steps {
             git branch: 'main', url: 'https://github.com/sami-ahmed229/flask-devops-app.git'
        }
        stage ('image build')
        steps {
            script {
                docker.build("flask-devops-app:latest")
            }
            stage ('container build') {
                steps {
                    sh 'docker run -d -p 5000:5000 --name pythonapp flask-devops-app:latest'
                }
            }
        }
    }
}