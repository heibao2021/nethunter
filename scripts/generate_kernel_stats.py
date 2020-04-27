#!/usr/bin/env python3
import os
OUTPUT_FILE = './kernelstats.md'
rootdir = './'
total = 0
header = "This table was generated automatically from [the NetHunter gitlab repository](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices)  \n\n"
qty_versions = {
                'kitkat':      0,
                'lollipop':    0,
                'marshmallow': 0,
                'nougat':      0,
                'oreo':        0,
                'pie':         0,
                'ten':         0
}

def dcount(path):
    root, dirs, files = next(os.walk(path))
    return len(dirs)

def get_versions():
    for v in qty_versions:
        path = rootdir + v
        qty_versions[v]  = dcount(path)

def calc_total():
    t = 0
    for v in qty_versions:
        t += qty_versions[v]
    return t

def generate_table():
    global total
    table = "| Android Version &nbsp;&nbsp; | Qty |\n"
    table += "|:--------------------|--:|\n"
    # iterate over all the devices
    for v in qty_versions:
        table += "| {} | {} |\n".format(v.capitalize(), str(qty_versions[v]))
    return table

def print_text():
    global total
    print("\nNetHunter kernel statistics\n")
    for v in qty_versions:
        if len(v) < 8:
            tabs = "\t\t"
        else:
            tabs = "\t"
        print(v.capitalize() + ":" + tabs + str(qty_versions[v]))

    print("=====================================")
    print("TOTAL:\t\t" + str(total) + "  \n")

def write_markdown():
    global total
    generated_markdown = generate_table()
    with open(OUTPUT_FILE, 'w') as f:
        meta = '---\n'
        meta += 'title: NetHunter Kernel Statistics\n'
        meta += '---\n'
        quantity = "The NetHunter repository contains a total of ***" + str(total) + "*** kernels.  \n\n"
        f.write(str(meta))
        f.write(str(header))
        f.write(str(quantity))
        f.write(str(generated_markdown))
        f.close()

get_versions()
total = calc_total()
write_markdown()
print_text()
