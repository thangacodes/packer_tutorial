pipeline {
    agent any

    stages {
        stage('Checkout code') {
            steps {
                echo 'Just checking out the code'
            }
        }
    }
    stage {
        stage('Building an AMI'){
            steps{
                echo 'About to start the build process'
                dir('./corp_packer_demo')
                sh 'packer-tf.sh'
            }
        }
    }
}
