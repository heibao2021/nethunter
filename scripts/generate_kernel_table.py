#!/usr/bin/env python3
import yaml

OUTPUT_FILE = './kernels.md'
INPUT_FILE = './kernels.yml'

def sanitize_content(content):
    result = ""
    lines = data.split('\n')
    for line in lines:
        if len(line) > 0 and line[0] != '#':
            result += line + '\n'
    return result

def generate_device_table(data):
    default = ""
    table = "| Model | Kernel ID | Android version | Linux version | Kernel version | Description | Author | Features | Source |\n|----|--|---|-|-|----|---|---|----------|\n"
    for element in data:
        for kernel_name in element.keys():
            model = element[kernel_name]['model']
            for kernel in element[kernel_name]['kernels']:
                for version in kernel['versions']:
                    features = ""
                    i = 0
                    for f in version.get('features', default):
                        if i > 0:
                            features += ", "
                        features +=  f 
                        i += 1
                    table += "| {} | {} | {} | {} | {} | {} | {} | {} | `{}` |\n".format(model, kernel.get('id', default), version.get('android', default), version.get('linux', default), version.get('kernel', default), version.get('description', default), version.get('author', default), features, version.get('source', default))
    return table

with open(INPUT_FILE) as f:
    data = f.read()
    content = sanitize_content(data)
    res = yaml.load(content, Loader=yaml.FullLoader)
    table = generate_device_table(res)

    with open(OUTPUT_FILE, 'w') as g:
        kernels_number = len(table.split('\n'))-3
        header = "This table was generated automatically from [the NetHunter gitlab repository](https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices)  \n\n"
        meta = '---\n'
        meta += 'title: Official NetHunter Kernels\n'
        meta += '---\n'
        quantities = "*** The NetHunter repository contains **{}** kernels for Nethunter ***\n\n".format(str(kernels_number))
        g.write(str(meta))
        g.write(str(header))
        g.write(str(quantities))
        g.write(table)
        g.close()

        print('File {} successfully written.'.format(OUTPUT_FILE))
        print('Kernels:  {}'.format(kernels_number))
