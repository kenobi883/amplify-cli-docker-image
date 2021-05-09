#!/bin/sh

set -e

amplify --version

# echo '{"projectPath": "'"$(pwd)"'","defaultEditor":"code","envName":"'$AMPLIFY_ENV'"}' > ./amplify/.config/local-env-info.json

amplify $@
