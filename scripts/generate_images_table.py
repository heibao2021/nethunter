#!/usr/bin/env python3
import yaml # python3 -m pip install pyyaml --user
from datetime import datetime

OUTPUT_FILE = './images.md'
INPUT_FILE = './devices.cfg'
repo_msg = "\n_This table was generated automatically on {} from the [Kali NetHunter GitLab repository](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices)_\n".format(datetime.now().strftime("%Y-%B-%d %H:%M:%S"))
qty_devices = 0
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
##*         rootfs : full
##*         doco   : ""
##*         note:    "** Our preferred low end device **"
##*       - name:    Nexus 6P (LineageOS 17.1)
##*         id:      angler-los
##*         os:      ten
##*         status:  Latest
##*         rootfs : full
##*         doco   : ""
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
    global qty_images
    default = ""
    table  = "| Display Name (Android OS) | Device | Kernel ID | Android Version | Status | Documentation Link | Notes |\n"
    table += "|---------------------------|--------|-----------|-----------------|--------|--------------------|-------|\n"
    # iterate over all the devices
    for element in data:
        # iterate over all the versions
        for key in element.keys():
            qty_devices += 1
            if 'images' in element[key]:
                for image in element[key]['images']:
                    qty_images += 1
                    table += "| {} | {} | {} | {} | {} | {} |\n".format(image.get('name', default),
                                                                                  key,
                                                                                  image.get('id', default),
                                                                                  image.get('os', default),
                                                                                  image.get('status', default),
                                                                                  image.get('doco', default),
                                                                                  image.get('note', default))
    return table

def get_versions():
    with open(INPUT_FILE) as f:
        data = f.read()
        f.close()
        return parse(data)

def write_markdown():
    with open(OUTPUT_FILE, 'w') as f:
        meta  = '---\n'
        meta += 'title: Official Kali NetHunter Images\n'
        meta += '---\n\n'
        stats  = "- The Kali NetHunter repository contains kernels for [**{}** devices](nethunter-imagestats.html)\n".format(str(qty_devices))
        stats += "- The next release cycle will include **{}** [Kali NetHunter images](https://www.offensive-security.com/kali-linux-nethunter-download/)\n\n".format(str(qty_images))
        f.write(str(meta))
        f.write(str(stats))
        f.write(str(generated_markdown))
        f.write(str(repo_msg))
        f.close()

def print_text():
    print('File: {} successfully written'.format(OUTPUT_FILE))
    print('Devices: {}'.format(qty_devices))
    print('Images : {}'.format(qty_images))

res = get_versions()
generated_markdown = generate_device_table(res)
write_markdown()
print_text()
