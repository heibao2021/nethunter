#!/usr/bin/env python3

import yaml # install pyyaml
OUTPUT_FILE = './images.md'
INPUT_FILE = './devices.cfg'

## Input:
## ------------------------------------------------------------ ##
##* - angler:
##*     model:   Nexus 6P
##*     note:
##*     images:
##*       - name:    Nexus 6P (Oreo)
##*         id:      xangler
##*         os:      oreo
##*         status:  Stable
##*         note:    "** Our preferred low end device **"
##*       - name:    Nexus 6P (LineageOS 17.1)
##*         id:      angler-los
##*         os:      ten
##*         status:  Latest
##*         note:    "** Warning: Android ten is very unstable at the moment. **"

header = "This table was generated automatically from https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices  \n\n"

with open(INPUT_FILE) as f:
    data = f.read()
    f.close()

def parse(content):
    result = ""
    lines = data.split('\n')
    for line in lines:
        if line.startswith('##*'):
            result += line[3:] + "\n"
    return yaml.load(result, Loader=yaml.FullLoader)

def generate_device_table(data):
    default = ""
    table = "| Device | Display Name | Kernel ID | Android Version | Status | Notes |\n|---|---|---|---|---|---|\n"
    # iterate over all the devices
    for element in data:
        # iterate over all the versions
        for key in element.keys():
            if 'images' in element[key]:
                for image in element[key]['images']:
                    table += "| {} | {} | {} | {} | {} | {} |\n".format(key, image.get('name', default), image.get('id', default), image.get('os', default), image.get('status', default), image.get('note', default))
    return table

res = parse(data)
generated_markdown = generate_device_table(res)

with open(OUTPUT_FILE, 'w') as f:
    f.write(str(header))
    f.write(str(generated_markdown))
    f.close()

print('File {} successfully written.'.format(OUTPUT_FILE))
