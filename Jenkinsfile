pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
            steps {
                git 'https://github.com/Fairez-Rashid/jenkins-docker-maven-java-webapp.git'
                sh "echo source code downloaded "
                
            }
        }

        stage('Maven compile') {
            steps {
                sh "mvn clean compile"
                sh "echo maven compile completed"
            }
        }

        stage('Maven package') {
            steps {
                sh "mvn package -Dmaven.test.skip=true"
                sh "mv /var/lib/jenkins/workspace/jenkinsci/target/java-web-app-1.0.war /var/lib/jenkins/workspace/jenkinsci/target/simple.war " 
            }
        }

         stage('Selenium Testing')  {
            steps {
                 sh "mvn test"
            }
        }

        stage('Deploy Maven Artifact') {
            steps {
                ansiblePlaybook become: true, becomeUser: 'ubuntu', credentialsId: 'b8a8581d-123c-4d42-9879-17f89591ca81', installation: 'ansible', inventory: '/home/ubuntu/inventory/inventory.ini', playbook: '/home/ubuntu/del.yml'

            }
        }


        
        
    }
}
