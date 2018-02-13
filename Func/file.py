"""
Thank you Heavenly Father
"""
from func.func import convertTo, explorer, dataLen, estimate, copyFiles,\
     deleteFiles, verifyFinish
import sys
from time import sleep
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot
import threading, math

class Convertor(QObject):
    
    def __init__(self):
        QObject.__init__(self)
        self.duration = 359
    progress = pyqtSignal(int, arguments=["progressLoader"])
    completed = pyqtSignal(str, arguments=["completeStatus"])
    orig_file = ''
    save_file = ''
    log_file = ''
    
    def thread_son(self):
        input_folder, output_folder, output_file = convertTo(self.orig_file, self.save_file, 'mp3')
        self.progressLoader(input_folder + output_file, 'mp3')
        copyFiles(output_file, output_folder + output_file)
        deleteFiles(input_folder, output_file, self.log_file)
        self.completeStatus(self.save_file)
    
    @pyqtSlot(str, str)
    def start(self, old_file, save):
        self.orig_file = old_file[8:]
        self.save_file = save[8:]
        first = threading.Thread(target=self.thread_son)
        first.start()
        print('He is Able')
    
    
    @pyqtSlot(str, str)
    def progressLoader(self, file_path, format_type):
        sleep(3)
        buffer = dataLen(file_path)
        #prev = -1
        per = 0.0
        est, self.log_file = estimate()
        
        while True:
            sleep(2)
            print('sleep')
            buffer = dataLen(file_path)
            if per > 97.0:
                print(per)
                if verifyFinish(self.log_file):
                    break
            else:
                per = math.ceil((buffer / est) * 100)
                print(per)
                self.progress.emit(per * 2)
                
        
        self.progress.emit(200)
        
    @pyqtSlot(str)
    def completeStatus(self, saved_file):
        self.completed.emit(saved_file)
        
    
    @pyqtSlot(str)
    def openExplorer(self, fileName):
        explorer(fileName)

if __name__ == '__main__':
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    convertor = Convertor()
    engine.rootContext().setContextProperty('convert', convertor)
    engine.load('../UI/main.qml')
    engine.quit.connect(app.quit)
    sys.exit(app.exec_())