#!/usr/bin/env python3
from datetime import datetime
import sys
import yaml # python3 -m pip install pyyaml --user

OUTPUT_FILE = './images.md'
INPUT_FILE = './devices.cfg'
repo_msg = "\n_This table was [generated automatically](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices/-/blob/master/devices.cfg) on {} from the [Kali NetHunter GitLab repository](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices)_\n".format(datetime.now().strftime("%Y-%B-%d %H:%M:%S"))
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

def yaml_parse(content):
    result = ""
    lines = content.split('\n')
    for line in lines:
        if line.startswith('##*'):
            ## yaml doesn't like tabs so let's replace them with four spaces
            result += line.replace('\t', '    ')[3:] + "\n"
    return yaml.safe_load(result)

def generate_table(data):
    global qty_devices, qty_images
    default = ""
    table  = "| Display Name (Android OS) | Device | Kernel ID | [Android Version](kernel-stats.html) | Rootfs | Status | [Documentation](https://www.kali.org/docs/nethunter/) | Notes |\n"
    table += "|---------------------------|--------|-----------|--------------------------------------|--------|--------|-------------------------------------------------------|-------|\n"

    # iterate over all the devices
    for element in data:
        # iterate over all the versions
        for key in element.keys():
            qty_devices += 1
            if 'images' in element[key]:
                for image in element[key]['images']:
                    qty_images += 1
                    doco = image.get('doco', default)
                    if doco:
                        doco = "<" + doco + ">"
                    table += "| {} | {} | {} | {} | {} | {} | {} | {} |\n".format(image.get('name', default),
                                                                                  key,
                                                                                  image.get('id', default),
                                                                                  image.get('os', default),
                                                                                  image.get('rootfs', default),
                                                                                  image.get('status', default),
                                                                                  doco,
                                                                                  image.get('note', default))
        if not 'images' in element.keys():
            print("[i] Possible issue with: " + element.get('model', default) + " (no images)")
    return table

def read_file(file):
    try:
        with open(file) as f:
            data = f.read()
            f.close()
    except Exception as e:
        print("[-] Cannot open input file: {} - {}".format(file, e))
    return data

def write_file(data, file):
    try:
        with open(file, 'w') as f:
            meta  = '---\n'
            meta += 'title: Kali NetHunter Images\n'
            meta += '---\n\n'
            stats  = "- The [next release](https://www.kali.org/releases/) cycle will include [**{}** Kali NetHunter images](image-stats.html) _([ready to download](https://www.kali.org/get-kali/#kali-mobile))_\n".format(str(qty_images))
            stats += "- The official [Kali NetHunter repository](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices) contains [kernels](kernels.html) for [**{}** devices](image-stats.html) _([config](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices/-/blob/master/devices.cfg))_\n".format(str(qty_devices))
            stats += "- [Kali NetHunter Statistics](index.html)\n\n"
            f.write(str(meta))
            f.write(str(stats))
            f.write(str(data))
            f.write(str(repo_msg))
            f.close()
            print('[+] File: {} successfully written'.format(OUTPUT_FILE))
    except Exception as e:
        print("[-] Cannot write to output file: {} - {}".format(file, e))
    return 0

def print_summary():
    print('Devices: {}'.format(qty_devices))
    print('Images : {}'.format(qty_images))

def main(argv):
    # Assign variables
    data = read_file(INPUT_FILE)

    # Get data
    res = yaml_parse(data)
    generated_markdown = generate_table(res)

    # Create markdown file
    write_file(generated_markdown, OUTPUT_FILE)

    # Print result
    print_summary()

    # Exit
    exit(0)

if __name__ == "__main__":
    main(sys.argv[1:])
