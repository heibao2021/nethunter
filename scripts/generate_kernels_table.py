#!/usr/bin/env python3
from datetime import datetime
import sys
import yaml # python3 -m pip install pyyaml --user

OUTPUT_FILE = './kernels.md'
INPUT_FILE = './kernels.yml'
repo_msg = "\n_This table was generated automatically on {} from the [Kali NetHunter GitLab repository](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices)_\n".format(datetime.now().strftime("%Y-%B-%d %H:%M:%S"))
qty_models = 0
qty_kernels = 0

## Input:
## ------------------------------------------------------------ ##
##- a5uelte:
##    model   : Samsung Galaxy A5 (2015)
##    kernels :
##      - id          : a5ulte
##        description : Galaxy A5 (2015) for CyanogenMod
##        versions    :
##          - android      : marshmallow
##            linux        : '3.10'
##            kernel       : 1.3
##            description  : CyanogenMod 13
##            author       : DeadSquirrel01
##            source       : 'git clone https://github.com/DeadSquirrel01/nethunter-kernel-a5ulte.git -b cm-13.0'
##            features     : []
##      - id          : a5ulte-touchwiz
##        description : Galaxy A5 (2015) for TouchWiz (Europe)
##        versions    :
##          - android      : marshmallow
##            linux        : '3.10'
##            kernel       : 1.3
##            description  : TouchWiz 6
##            author       : DeadSquirrel01
##            source       : 'git clone https://github.com/DeadSquirrel01/nethunter-kernel-a5ulte.git -b touchwiz-6.0'
##            features     : []

def yaml_parse(data):
    result = ""
    lines = data.split('\n')
    for line in lines:
        if len(line) > 0 and line[0] != '#':
            result += line + '\n'
    return yaml.safe_load(result)

def generate_table(data):
    global qty_kernels, qty_models
    default = ""
    table  = "| Display Name | Kernel ID | Android Version | Linux Version | Kernel Version | Description | Features | Author | Source |\n"
    table += "|--------------|-----------|-----------------|---------------|----------------|-------------|----------|--------|--------|\n"

    for element in data:
        for kernel_name in element.keys():
            model = element[kernel_name]['model']
            qty_models += 1
            for kernel in element[kernel_name]['kernels']:
                for version in kernel['versions']:
                    qty_kernels += 1
                    features = ""
                    i = 0
                    for f in version.get('features', default):
                        if i > 0:
                            features += ", "
                        features += f
                        i += 1
                    table += "| {} | {} | {} | {} | {} | {} | {} | {} | `{}` |\n".format(model,
                                                                                         kernel.get('id', default),
                                                                                         version.get('android', default),
                                                                                         version.get('linux', default),
                                                                                         version.get('kernel', default),
                                                                                         version.get('description', default),
                                                                                         features,
                                                                                         version.get('author', default),
                                                                                         version.get('source', default))
    #qty_kernels = len(table.split('\n'))-3
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
            meta += 'title: Kali NetHunter Kernels\n'
            meta += '---\n\n'
            stats  = "- The official [Kali NetHunter repository](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices) is using [**{}** kernels](kernel-stats.html) _([here](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices/-/blob/master/kernels.yml))_\n".format(str(qty_kernels))
            stats += "- These kernels can be used on **{}** models\n".format(str(qty_models))
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
    print('Kernels: {}'.format(qty_kernels))
    print('Models : {}'.format(qty_models))

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
