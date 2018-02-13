"""

    To God of the Heavens and the Earth be Glory for ever and ever

"""

import os
import re

import math

function_list = {'mp3':'-i', 'copy': ''}

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
    
def estimate():
    lists = os.listdir()
    for item in lists:
        if 'ffmpeg-' in item:
            log_file = item
            no = 0
            line_no = 8816
            with open(item, 'r') as logFile:
                for line in logFile:
                    no += 1
                    if re.findall('  Duration: .*?.*?.*? kb/s$', line):
                        line_no = no
                        dLine = re.findall('[0-9]+:[0-9]+:[0-9]+.?[0-9]+', line)
                        timeCards = dLine[0].split(':')
                        mmtimers = int(timeCards[1]) * 60
                        soad = math.ceil(float(timeCards[2]))
                        dracell = mmtimers + soad
                    elif no == line_no + 5:
                        kbLine = re.findall('[0-9]+ kb/s', line)
                        nums = re.split(' ', kbLine[0])
                        kbints = int(nums[0])
                        kbytes = (kbints / 8) * 1024
                total = dracell * kbytes
                print(total)
            return total, log_file

def convertTo(filename, output, func):
    input_folder, input_file = makeFileFolder(filename)
    output_folder, output_file = makeFileFolder(output)
    with open('ffmpeg.exe', 'rb') as fr:
        ffbin = fr.read()
        with open(input_folder + 'ffmpeg.exe', 'wb') as fw:
            fw.write(ffbin)
    os.chdir(input_folder)
    function = function_list[func]
    cmd = 'ffmpeg' + ' ' + function + ' ' + input_file + ' ' + output_file + \
        ' -report'
    os.popen(cmd)
    
    #copyFiles(output_file, output_folder + output_file)
    return input_folder, output_folder, output_file
    
    print('status')

def dataLen(filename):
    with open(filename, 'rb') as handle:
        data = handle.read()
        return len(data)

def verifyFinish(log_file):
    with open(log_file, 'r') as lg:
        for line in lg:
            if re.findall('[0-9]+ frames successfully decoded', line):
                return True

def explorer(filename):
    if os.path.exists(filename):
        cmd = 'explorer ' + filename.replace('/', '\\')
        os.popen(cmd)
    else:
        return 'Sorry File does not Exist'

def copyFiles(file, target):
    with open(file, 'rb') as fr:
        data = fr.read()
        with open(target, 'wb') as fw:
            fw.write(data)

def deleteFiles(input_folder, save_file, log_file):
    os.chdir(input_folder)
    fCmd = 'del ' + 'ffmpeg.exe'
    os.popen(fCmd)
    sCmd = 'del ' + save_file
    print(sCmd)
    os.popen(sCmd)
    tCmd = 'del ' + log_file
    print(tCmd)
    os.popen(tCmd)
