"""
Thank you Heavenly Father
"""
from func.func import convertTo, explorer, dataLen, estimate, copyFiles
import sys
from time import sleep
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot

class Convertor(QObject):
    
    def __init__(self):
        QObject.__init__(self)
        self.duration = 0.0
        
    progress = pyqtSignal(int, arguments=["start"])
    completed = pyqtSignal(str, arguments=["completeStatus"])
    
    @pyqtSlot(str, str)
    def start(self, old_file, save):
        orig_file = old_file[8:]
        save_file = save[8:]
        input_folder, output_folder, output_file = convertTo(orig_file, save_file, 'mp3')
        self.progressLoader(input_folder + output_file, 'mp3')
        copyFiles(output_file, output_folder + output_file)
        self.completeStatus(save_file)
        
    @pyqtSlot(str, str)
    def progressLoader(self, file_path, format_type):
        sleep(1)
        buffer = dataLen(file_path)
        est = estimate(format_type, self.duration)
        
        while buffer < est:
            self.progress.emit(buffer / est)
            buffer = dataLen(file_path)
        self.progress.emit(buffer / est)
        
    @pyqtSlot(str)
    def completeStatus(self, saved_file):
        print('here')
        self.completed.emit(saved_file)
        
    
    @pyqtSlot(str)
    def openExplorer(self, fileName):
        explorer(fileName)

app = QGuiApplication(sys.argv)
engine = QQmlApplicationEngine()
convertor = Convertor()
engine.rootContext().setContextProperty('convert', convertor)
engine.load('../UI/main.qml')
engine.quit.connect(app.quit)
sys.exit(app.exec_())