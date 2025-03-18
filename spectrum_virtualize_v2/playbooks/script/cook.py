import json
#import shutil
#import os
import sys

#original = r'/root/Storage/spectrum_virtualize/playbooks/script/dummy.exp'
#target = r'/root/Storage/spectrum_virtualize/playbooks/script/exp.json'
#filename = r'/root/Storage/spectrum_virtualize/playbooks/script/res.txt'
original = sys.argv[1]
#target = sys.argv[2]
filename = sys.argv[2]

#shutil.copyfile(original, target)

fin = open(original, "rt")
data = fin.read()
data = data.replace('{"Volume": [], "Pool": [], "Node": [], "IOGroup": [], "Host": [], "HostCluster": [], "FCConnectivitie": [], "FCConsistgrp": [], "RCConsistgrp": [], "VdiskCopy": [], "FCPort": [], "TargetPortFC": [], "iSCSIPort": [], "FCMap": [],', '{') 
fin.close()
fin = open(original, "wt")
fin.write(data)
fin.close()

with open(original, 'r') as json_file:
        json_load = json.load(json_file)

f = open(filename,'w')

jdata = json_load['RemoteCopy']
for x in jdata:
        print(x['master_vdisk_name'], x['freeze_time'], file=f)

#os.system('sh /root/Storage/spectrum_virtualize/playbooks/script/cook.sh')


