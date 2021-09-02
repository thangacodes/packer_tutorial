pipeline {
    agent any

    stages{
        stage('Checkout the code'){
            steps{
                echo 'checking the code'
            }
        }
    }
    stage('BUILDING AN AMI'){
        steps{
            echo 'Building an ami using packer'
            sh 'packer-tf.sh'
            sleep 3
        }
    }
}
