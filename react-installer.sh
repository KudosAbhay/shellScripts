#!/bin/sh

# NOTE: We need to provide root permissions for this file to run
# 1. Provide it permissions using 'sudo chown -R root:root react-installer.sh'
# 2. Provide appropriate r/w permissions to script using: 'sudo chmod 755 react-installer.sh'
# 3. Execute this script using 'sudo react-installer.sh'

# Creating New Project in react...
npm install -g create-react-app
create-react-app my-app
cd my-app

# Delete all files in src/ folder of the project
rm -f src/*


# Steps to Install first app
# npm run
# npm start
# npm test
# npm run build
# cd build && npx serve
