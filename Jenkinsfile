 pipeline {
 agent any

stages{
    stage('Build') {
       steps {
          //Get some code from a github repository
          git 'https://github.com/pkhan2/pet-adoption.git'
          //Run maven wrapper cpmmands
          sh "./mvnw compile"

          echo 'Building the project with maven compile'
       }
    }
    stage ('Test'){
        steps{
            //Run Maven wrapper commands
            sh "./mvnw test"

            echo 'Testing the project with maven test'
        }
    }
    stage('Package') {
        steps{
             //Run maven wrapper commands
        sh "./mvnw package"

        echo 'packaging the project with maven package'
        }
    }
    stage('containerize') {
        steps{
            //Run docker build command
            sh "docker build -t pet-clinic-image."

            echo 'containerizing the app with docker'
        }
    }
    stage('Deploy') {
        steps{
            //run docker run command with detached mode
            sh "docker run -d -p 9090:9090 pet-clinic-image"

            echo 'Deploy the app with Docker'
        }
    }
 } 
 }     