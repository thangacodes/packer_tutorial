pipeline {
    agent any
    stages {
        stage('Checkout code') {
            steps {
                echo 'Just checking out the code'
            }
        }
    }
    stage('Building AN AMI USING PACKER'){
        steps{
            sh 'cd corp_packer_demo'{
            sh 'packer-tf.sh'
            }
        }
    }
}
