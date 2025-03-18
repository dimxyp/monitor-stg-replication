#!/bin/sh
cd /root/Storage/spectrum_virtualize/playbooks
ansible-playbook gather_info.yml
cd /root/Storage/spectrum_virtualize/playbooks/script
/usr/bin/python3 cookng.py > res.txt
/root/Storage/spectrum_virtualize/playbooks/script/cook.sh
