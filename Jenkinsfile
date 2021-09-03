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
                sh '''
                pwd
                ls -lrth
                sleep 5
                ./packer-tf.sh
                sleep 5
                '''
            }
        }
    }
}
