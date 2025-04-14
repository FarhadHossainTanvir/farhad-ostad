pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'git@github.com:FarhadHossainTanvir/farhad-ostad.git'
            }
        }

        stage('Read hello.txt') {
            steps {
                script {
                    def content = readFile 'hello.txt'
                    echo "📄 Contents of hello.txt:\n${content}"
                }
            }
        }
    }

    triggers {
        pollSCM('* * * * *')
    }
}
