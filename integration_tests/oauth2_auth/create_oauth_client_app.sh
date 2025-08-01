#!/bin/sh

## Then you can finally provision new OAuth 2.0 
## credentials (also called "OAuth applications") 

source ../common_functions.sh

module=oauth2auth
client_name=helloWorldApp
client_id=helloWorldApp_id
client_secret=1234Secret
##redirect_uri="http://getkong.org/"
redirect_uri="http://localhost:9090/"

set -x
curl -X POST ${kong_admin_url}/consumers/thefosk/oauth2/  \
    --data "name=${client_name}" \
    --data "client_id=${client_id}" \
    --data "client_secret=${client_secret}" \
    --data "redirect_uri=${redirect_uri}"
