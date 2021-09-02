pipeline {
    agent any

    stages{
        stage('Checkout the code'){
            steps{
                echo 'checking the code'
            }
        }
        stage('Building an AMI'){
            steps{
                echo 'starting the packer process'
                sh 'pwd'
                sh 'ls -lrth'
                sh 'packer-tf.sh'
            }
        }
    }
}
