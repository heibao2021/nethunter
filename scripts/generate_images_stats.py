#!/usr/bin/env python3
import yaml # python3 -m pip install pyyaml --user
from datetime import datetime

OUTPUT_FILE = './imagestats.md'
INPUT_FILE = './devices.cfg'
repo_msg = "\n_This table was generated automatically on {} from the [Kali NetHunter GitLab repository](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices)_\n".format(datetime.now().strftime("%Y-%B-%d %H:%M:%S"))
qty_images = 0

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
    global qty_images
    result = ""
    default = ""
    lines = data.split('\n')
    for line in lines:
        if line.startswith('##*'):
            ## yaml doesn't like tabs so let's replace them with four spaces
            result += line.replace('\t', '    ')[3:] + "\n"
    ctg = yaml.load(result, Loader=yaml.FullLoader)
    # iterate over all the devices
    devices = []
    for element in ctg:
        # iterate over all the versions
        for key in element.keys():
            if 'images' in element[key]:
                for image in element[key]['images']:
                    qty_images += 1
                    devices.append(image.get('name', default))
    return devices

def generate_device_table(data):
    table  = "| Display Name (Android OS) |\n"
    table += "|---------------------------|\n"
    # iterate over all the devices
    for device in sorted(data):
        table += "| {} |\n".format(device)
    return table

def get_versions():
    with open(INPUT_FILE) as f:
        data = f.read()
        f.close()
        return parse(data)

def write_markdown():
    with open(OUTPUT_FILE, 'w') as f:
        meta  = '---\n'
        meta += 'title: Kali NetHunter Image Statistics\n'
        meta += '---\n\n'
        stats = "- The next release cycle will include **{}** [Kali NetHunter images](nethunter-images.html)\n\n".format(str(qty_images))
        f.write(str(meta))
        f.write(str(stats))
        f.write(str(generated_markdown))
        f.write(str(repo_msg))
        f.close()

def print_text():
    print('File: {} successfully written'.format(OUTPUT_FILE))
    print('Images : {}'.format(qty_images))

res = get_versions()
generated_markdown = generate_device_table(res)
write_markdown()
print_text()
