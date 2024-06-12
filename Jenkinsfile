pipeline {
    agent { label "dev-server" }
    stages{
        stage("Clone Code"){
            steps{
                git url: "https://github.com/AgnerLoss/django_crm.git", branch: "develop"
            }
        }
        stage("Build and Test"){
            steps{
                sh "docker build -t aguinho/django-crm ."
            }
        }
        stage("Push to Docker Hub"){
            steps{
                withCredentials([usernamePassword(credentialsId:"dockerHub",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){
                sh "docker tag aguinho/django-crm ${env.dockerHubUser}/aguinho/django-crm:latest"
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                sh "docker push ${env.dockerHubUser}/aguinho/django-crm:latest"
                }
            }
        }
        stage("Deploy"){
            steps{
                sh "docker-compose down && docker-compose up -d"
            }
        }
    }
}