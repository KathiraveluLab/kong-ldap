set -x

./add_api.sh
sleep 3

./add_key_auth_plugin.sh
sleep 3

./add_consumer.sh
sleep 3

./add_key_for_consumer.sh
sleep 3

./test.sh
