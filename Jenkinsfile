pipeline {
    agent any
    tools {
        maven 'Maven'
    }
     environment {
        registry = "499199586988.dkr.ecr.ap-southeast-1.amazonaws.com/testpro"
    }
 stages {
        stage('checkout') {
                steps {
                    git branch: 'main', url: 'https://github.com/Mikky3554/sample_K8s_Deplyment.git'
                }
            }
        stage('Maven Build') {
           steps {
                sh 'mvn clean install -Dmaven.test.skip -DskipTests'             
            }
        }
        stage('Build Image') {
            steps {
                script {
                    dockerImage = docker.build registry
                }
            }
        }   
        stage('Image Push to ECR'){
            steps {
                script {
                    sh 'aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 499199586988.dkr.ecr.ap-southeast-1.amazonaws.com'
                    sh 'docker push 499199586988.dkr.ecr.ap-southeast-1.amazonaws.com/testpro:latest'
                    sh 'sudo docker images'
                    sh 'sudo docker ps'
                }
            }
        }
        stage('K8s Deploy'){
                steps {
                    script {
                    withKubeConfig(caCertificate: '', clusterName: '', contextName: '', credentialsId: 'k8s_config_jen', namespace: '', serverUrl: '') {
                        sh 'kubectl delete deployment my-java-deployment'
                        sh 'kubectl delete hpa my-java-deployment-hpa'
                        sh 'kubectl delete svc java-app-svc'
                        sh 'kubectl delete namespace springbootjavaapp'
                        sh 'kubectl create namespace springbootjavaapp'
                        sh ('kubectl apply -f  K8sspringboot.yaml')
                        sh 'kubectl get nodes'
                        sh 'kubectl get pods '
                        sh 'kubectl get svc'
                        sh 'kubectl get all'
                        
                    }
                }    
            }
        }
    }    
}    
