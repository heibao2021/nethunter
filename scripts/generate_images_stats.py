#!/usr/bin/env python3
import yaml # python3 -m pip install pyyaml --user
from datetime import date

OUTPUT_FILE = './imagestats.md'
INPUT_FILE = './devices.cfg'
repo_msg = "This table was generated automatically on {} from the [Kali NetHunter GitLab repository](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices)\n".format(today.strftime("%Y-%B-%d"))
qty_devices = 0

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

def parse(data):
    result = ""
    lines = data.split('\n')
    for line in lines:
        if line.startswith('##*'):
            ## yaml doesn't like tabs so let's replace them with four spaces
            result += line.replace('\t', '    ')[3:] + "\n"
    return yaml.load(result, Loader=yaml.FullLoader)

def generate_device_table(data):
    global qty_devices
    default = ""
    table = "| Device |\n"
    table += "|-------|\n"
    # iterate over all the devices
    for element in data:
        # iterate over all the versions
        for key in element.keys():
            qty_devices += 1
            table += "| {} |\n".format(key)
    return table

def get_versions():
    with open(INPUT_FILE) as f:
        data = f.read()
        f.close()
        return parse(data)

def write_markdown():
    with open(OUTPUT_FILE, 'w') as f:
        meta = '---\n'
        meta += 'title: Kali NetHunter Image Statistics\n'
        meta += '---\n\n'
        quantities = "The Kali NetHunter repository contains kernels for [**{}** devices](nethunter-images.html)\n".format(str(qty_devices))
        f.write(str(meta))
        f.write(str(header))
        f.write(str(quantities))
        f.write(str(generated_markdown))
        f.close()

def print_text():
    print('File: {} successfully written\n'.format(OUTPUT_FILE))
    print('Devices: {}'.format(qty_devices))

res = get_versions()
generated_markdown = generate_device_table(res)
write_markdown()
print_text()
