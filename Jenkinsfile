pipeline {
    agent any
stages {
    stage('SCM') {
        steps {
            git branch: 'master', url: 'https://github.com/20027623-Sachin-Dev/jenkins-docker-maven-java-webapp.git'
        }
    }

    stage('Build by Maven Package') {
        steps {
            sh 'mvn clean package'
        }
    }

    }
}
