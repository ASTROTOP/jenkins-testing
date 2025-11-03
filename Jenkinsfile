pipeline {
    agent any
    
    tools {
        jdk 'jdk17'  
    }
    
    stages {
        stage('Build') {
            steps {
                sh 'javac Test.java'
                sh 'java Test'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-java-app .'
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run --rm my-java-app'
                }
            }
        }
    }
}
