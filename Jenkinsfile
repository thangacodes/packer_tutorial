pipeline {
    agent any

    stages{
        stage('Checkout the code'){
            steps{
                echo 'checking the code'
            }
        }
    }
    stage{
        steps{
            dir('./packer_ami_build')
            sh 'ls -lrth'
            sh 'sleep 2'
            sh 'pwd'
            sh 'packer-tf.sh'
        }
    }
}
