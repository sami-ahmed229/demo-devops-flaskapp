pipeline{
    agent any

    stages {
        stage ('image build') {
            steps {
                script {
                    docker.build ("flaskapp:latest")
                }
            }
        }
        stage ('containerization') {
            steps {
                sh 'docker run -d -p 5000:5000 --name pythonapp flaskapp:latest'
            }
        }
    }
}