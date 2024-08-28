SDS=3600
clear
echo "creating nested"
sleep 10

ansible-playbook -i hosts main.yml --extra-var version="8" --extra-var='{"target_hosts": [nested8-host.vpshere.local,nested8-host1.vsphere.local]}'

echo "nested will live for $SDS seconds then be deleted"
sleep $SDS

ansible-playbook -i hosts main.yml -t removeisonested --extra-var='{"target_hosts": [nested8-host.vpshere.local,nested8-host1.vsphere.local]}' --extra-var version="8" --extra-var deletevms=true --extra-var forcedelete=true

