pipeline {
    agent {
        docker {
            image 'node:6-alpine'
        }
    }
    stages
    {
        stage('Build')
        {
            steps {
                sh 'npm install'
                sh 'npm run build'
                sh 'docker build -t xks/node-api:v3 .'
            }
        }
        stage('Deploy')
        {
            steps {
                sh 'docker stop node-api'
                sh 'docker rm node-api'
                sh 'docker run -d -p 80:80 --name node-api  xks/node-api:v3'
            }
        }
    }
    // agent {
    //     docker {
    //         image 'node:6-alpine'
    //         args '-p 3000:3000'
    //     }
    // }
    // environment { 
    //     CI = 'true'
    // }
    // stages {
    //     stage('Build') {
    //         steps {
    //             sh 'npm install'
    //         }
    //     }
    //     // stage('Test') {
    //     //     steps {
    //     //         sh './jenkins/scripts/test.sh'
    //     //     }
    //     // }
    //     stage('Deliver') { 
    //         steps {
    //             sh './jenkins/scripts/deliver.sh'
    //             input message: 'Finished using the web site? (Click "Proceed" to continue)' 
    //             sh './jenkins/scripts/kill.sh' 
    //         }
    //     }
    //     // stage ('FileOperations - Copying file') {
    //     //     steps {
    //     //         fileOperations([
    //     //             folderDeleteOperation(folderPath: '/home/simple-node-js-react-npm-app'),
    //     //             folderCopyOperation(
    //     //                 sourceFolderPath: '/var/jenkins_home/workspace/simple-node-js-react-npm-app/build',
    //     //                 destinationFolderPath: '/home/simple-node-js-react-npm-app'
    //     //             )
    //     //         ])
    //     //     }
    //     // }
    //     // stage('Remote SSH') {
    //     //     steps {
    //     //         script {
    //     //             def remote = [:]
    //     //             remote.name = 'localhost'
    //     //             remote.host = '192.168.124.19'
    //     //             remote.user = 'administrator'
    //     //             remote.password = 'Password01!'
    //     //             remote.allowAnyHosts = true

    //     //             sshCommand remote: remote, command: "MKDIR simple-node-js-react-npm-app@tmp"
    //     //             sshPut remote: remote, from: '/var/jenkins_home/workspace/simple-node-js-react-npm-app/build', into: './simple-node-js-react-npm-app@tmp'
    //     //             sshPut remote: remote, from: 'deploy.bat', into: './simple-node-js-react-npm-app@tmp'
    //     //             sshCommand remote: remote, command: "simple-node-js-react-npm-app@tmp\\deploy"
    //     //             sshCommand remote: remote, command: "RD /S /Q simple-node-js-react-npm-app@tmp"
    //     //         }
    //     //     }
    //     // }
    // }
}