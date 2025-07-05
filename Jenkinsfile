pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                checkout scm
            }
        }
        stage('Run Tests') {
            steps {
                sh 'chmod +x test.sh && ./test.sh'
            }
        }
        stage('Notify') {
            steps {
                echo 'Tests finished. Check above for pass/fail.'
            }
        }
    }
    post {
        success {
            echo '🎉 All tests passed!'
        }
        failure {
            echo '❌ Tests failed!'
        }
    }
}
