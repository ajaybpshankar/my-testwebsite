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
                echo "Simulating build process..."
                sleep 2
                echo "Build complete."
                '''
            }
        }

        stage('Test Command') {
            steps {
                sh '''
                echo "Listing files in workspace:"
                ls -l
                echo "Current date is:"
                date
                '''
            }
        }
    }
}
