pipeline {
    agent {
        docker {
            image 'node:6-alpine'
            args '-p 3000:3000'
        }
    }
    environment { 
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Deliver') { 
            steps {
                sh './jenkins/scripts/deliver.sh'
            }
        }
        stage ('FileOperations - Copying file') {
            steps {
                fileOperations([
                    folderDeleteOperation(folderPath: '/home/simple-node-js-react-npm-app')
                    folderCopyOperation(
                        sourceFolderPath: '/var/jenkins_home/workspace/simple-node-js-react-npm-app/build',
                        destinationFolderPath: '/home/simple-node-js-react-npm-app'
                    )
                ])
            }
        }
        // stage ('Copying file') {
        //     steps {
        //         sh 'cp -Rp /var/jenkins_home/workspace/simple-node-js-react-npm-app/build /home/simple-node-js-react-npm-app'
        //     }
        // }
    }
}