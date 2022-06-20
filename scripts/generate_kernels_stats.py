#!/usr/bin/env python3
from datetime import datetime
import os
import sys

OUTPUT_FILE = './kernel-stats.md'
rootdir = './'
repo_msg = "\n_This table was generated automatically on {} from the [Kali NetHunter GitLab repository](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices)_\n".format(datetime.now().strftime("%Y-%B-%d %H:%M:%S"))
qty_kernels = 0
qty_versions = {
                'kitkat':      0,
                'lollipop':    0,
                'marshmallow': 0,
                'nougat':      0,
                'oreo':        0,
                'pie':         0,
                'ten':         0,
                'eleven':      0,
                'wearos':      0
}

## Input:
## ------------------------------------------------------------ ##
## ./
##  |---> [Android Version]/
##      |-> [Device]/

def dir_count(path):
    root, dirs, files = next(os.walk(path))
    return len(dirs)

def calc_kernels():
    t = 0
    for v in qty_versions:
        t += qty_versions[v]
    return t

def get_versions():
    for v in qty_versions:
        path = rootdir + v
        qty_versions[v] = dir_count(path)

def generate_table():
    table  = "| Android Version | Qty |\n"
    table += "|-----------------|-----|\n"
    # iterate over all the devices
    for v in qty_versions:
        table += "| {} | {} |\n".format(v.capitalize(),
                                        str(qty_versions[v]))
    return table

def write_file(data, file):
    global repo_msg, qty_kernels
    try:
        with open(file, 'w') as f:
            meta  = '---\n'
            meta += 'title: Kali NetHunter Kernel Statistics\n'
            meta += '---\n\n'
            stats  = "- The official [Kali NetHunter repository](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices) has a total of [**{}** kernels](kernels.html) directories\n".format(str(qty_kernels))
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
    global qty_kernels
    #print("\nKali NetHunter Kernel Statistics\n")
    #for v in qty_versions:
    #    if len(v) < 8:
    #        tabs = "\t\t"
    #    else:
    #        tabs = "\t"
    #    print(v.capitalize() + ":" + tabs + str(qty_versions[v]))
    #
    #print("=====================================")
    #print("qty_kernels:\t\t" + str(qty_kernels) + "\n")
    print('Kernels dirs   : {}'.format(qty_kernels))
    print('Kernel versions: {}'.format(len(qty_versions)))

def main(argv):
    global qty_kernels

    # Get data
    get_versions()
    qty_kernels = calc_kernels()
    generated_markdown = generate_table()

    # Create markdown file
    write_file(generated_markdown, OUTPUT_FILE)

    # Print result
    print_summary()

    # Exit
    exit(0)

if __name__ == "__main__":
    main(sys.argv[1:])
