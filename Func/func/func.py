"""

    To God of the Heavens and the Earth be Glory for ever and ever

"""

import os


function_list = {'mp3':'-i', 'copy': ''}

estimates = {'mp3': 18, 'mp4': 512}

def makeFileFolder(fileName):
    filename = fileName.replace('\\', '/')
    folder = ''
    love = filename.split('/')
    for x in range(len(love)):
        if x == len(love) - 1:
            file = love[x]
        else:
            folder += love[x] + '/'
    return folder, file
    
def estimate(name, dur):
    est = estimates[name] * 300
    return est

def convertTo(filename, output, func):
    input_folder, input_file = makeFileFolder(filename)
    output_folder, output_file = makeFileFolder(output)
    with open('ffmpeg.exe', 'rb') as fr:
        ffbin = fr.read()
        with open(input_folder + '/ffmpeg.exe', 'wb') as fw:
            fw.write(ffbin)
    os.chdir(input_folder)
    function = function_list[func]
    cmd = 'ffmpeg' + ' ' + function + ' ' + input_file + ' ' + output_file
    os.popen(cmd)
    
    #copyFiles(output_file, output_folder + output_file)
    return input_folder, output_folder, output_file
    
    print('status')

def dataLen(filename):
    with open(filename, 'rb') as handle:
        data = handle.read()
        return len(data)

def explorer(filename):
    if os.path.exists(filename):
        cmd = 'explorer ' + filename
        os.popen(cmd)
    else:
        return 'Sorry File does not Exist'   

def copyFiles(file, target):
    with open(file, 'rb') as fr:
        data = fr.read()
        with open(target, 'wb') as fw:
            fw.write(data)

