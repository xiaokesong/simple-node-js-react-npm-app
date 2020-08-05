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
    //     stage('Build') {
    //         steps {
    //             sh 'npm install'
    //         }
    //     }
    //     stage('Test') {
    //         steps {
    //             sh './jenkins/scripts/test.sh'
    //         }
    //     }
    //     stage('Deliver') { 
    //         steps {
    //             sh './jenkins/scripts/deliver.sh'
    //         }
    //     }
    //     stage ('FileOperations - Copying file') {
    //         steps {
    //             fileOperations([
    //                 folderDeleteOperation(folderPath: '/home/simple-node-js-react-npm-app'),
    //                 folderCopyOperation(
    //                     sourceFolderPath: '/var/jenkins_home/workspace/simple-node-js-react-npm-app/build',
    //                     destinationFolderPath: '/home/simple-node-js-react-npm-app'
    //                 )
    //             ])
    //         }
    //     }
        stage('Remote SSH') {
            steps {
                script {
                    def remote = [:]
                    remote.name = 'localhost'
                    remote.host = '172.16.76.12'
                    remote.user = 'administrator'
                    remote.password = 'Password01!'
                    remote.allowAnyHosts = true

                    // sshRemove remote: remote, path: "./simple-node-js-react-npm-app@tmp"
                    // sshPut remote: remote, from: '/var/jenkins_home/workspace/simple-node-js-react-npm-app/build/', into: './simple-node-js-react-npm-app@tmp'
                    sshCommand remote: remote, command: "echo test"
                    // sshCommand remote: remote, command: 'deploy(simple-node-js-react-npm-app).bat'
                }
            }
        }
    }
}