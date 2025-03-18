## Storage Replication Custom Monitor


Notes:\
spectrum_virtualize_v2.\
Variables /[installpath]/vars/main.yml


Variable | Option | Description
----------|-----------------|--------
StorageIP | X.X.X.X| FlashSystem IP Address
user | String | username
pass | String | password
maxtime | Integer | Max freeze hours 
pycook | String/Path | Path to cook.py file
shcook | String/Path | Path to cook shell script
dummyexp | String/Path | Path to json export
res | String/Path | Path to result txt file
output | String/Path | Path to output result.txt

Run using: ansible-playbook gather_info.yml

 
#### e-mail-me dimitris.xypolias@kyndryl.com
#### slack-me [dimitris_xypolias](https://kyndryl.enterprise.slack.com/user/@U028AUYNA4V)
