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
                sh 'sleep 5'
                sh 'sudo chmod +x packer-tf.sh'
                sh 'sleep 5'
                sh 'sudo sh packer-tf.sh'
            }
        }
    }
}
