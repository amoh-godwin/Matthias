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
    scmd = 'copy ffmpeg.exe ' + input_folder
    os.popen(scmd)
    os.chdir(output_folder)
    function = function_list[func]
    
    cmd = 'ffmpeg' + ' ' + function + ' ' + input_file + ' ' + output_file
    os.popen(cmd)
    
    tcmd = 'copy ' + output_file + ' ' + output_folder + output_file
    os.popen(tcmd)
    
    fcmd = 'delete ffmpeg.exe'
    os.popen(fcmd)
    ffcmd = 'delete ' + output_file
    os.popen(ffcmd)
    
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
