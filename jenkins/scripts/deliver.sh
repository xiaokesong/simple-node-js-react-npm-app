#!/usr/bin/env sh

echo 'The following "npm" command builds your Node.js/React application for'
echo 'production in the local "build" directory (i.e. within the'
echo '"/var/jenkins_home/workspace/simple-node-js-react-app" directory),'
echo 'correctly bundles React in production mode and optimizes the build for'
echo 'the best performance.'
set -x
npm run build
set +x

echo '拷贝文件'
set -x
pwd
rm -rf /home/workspace/simple-node-js-react-npm-app
mkdir /home/workspace/simple-node-js-react-npm-app
cp -r /var/jenkins_home/workspace/simple-node-js-react-npm-app/build /home/workspace/simple-node-js-react-npm-app
set +x

echo 'Now...'
echo 'Visit http://localhost:3000 to see your Node.js/React application in action.'
echo '(This is why you specified the "args ''-p 3000:3000''" parameter when you'
echo 'created your initial Pipeline as a Jenkinsfile.)'