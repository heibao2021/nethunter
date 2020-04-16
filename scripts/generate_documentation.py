DELIMITER = '## ------------------------------------------------------- ##'
OUTPUT_FILE = './documentation.md'
INPUT_FILE = './devices.cfg'
 
devices = []
images = []
 
def generate_documentation_devices(documentation_file):
    template = """This documentation has been generated directly from https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-devices.
   
Supported Devices
======
 
There's currently {} number of devices supported with NetHunter.\n""".format(len(devices))
    template += """
| Codename | Device |
| --- | --- |
"""
    for device in devices:
        template += "| {} | {} |\n".format(device['codename'], device['device'])
    template += "\n\n"
    documentation_file.write(template)
 
def generate_documentation_images(documentation_file):
    template = """Official Images
======
 
There's currently {} number of images supported with NetHunter.\n""".format(len(images))
    template += """
| Image Name |
| --- |
"""
    for image in images:
        template += "| {} |\n".format(image)
    template += "\n\n"
    documentation_file.write(template)
 
with open(INPUT_FILE) as f:
    data = f.read()
    chunks = data.split(DELIMITER)[1:-1]
    for device in chunks:
        chunk = device.split('\n')
        devices.append({
            'codename': chunk[1].split(':')[1].split('##')[0].strip(),
            'device': chunk[2].split(':')[1].split('##')[0].strip()
        })
        for line in chunk:
            if '## Image:' in line:
                images.append(line.split('"')[1].strip())
 
    with open(OUTPUT_FILE, 'w') as g:
        generate_documentation_devices(g)
        generate_documentation_images(g)
   
    print('File {} successfully written.'.format(OUTPUT_FILE))