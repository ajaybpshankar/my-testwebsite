pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ajaybpshankar/my-testwebsite'
            }
        }

        stage('Build') {
            steps {
                sh '''
                echo "building docker image"
                docker build -t site .
                '''
            }
        }

        stage('Test Command') {
            steps {
                sh '''
                echo "creating a container "
               docker run -d --name my-html-container -p 8081:80 site
                '''
            }
        }
    }
}
