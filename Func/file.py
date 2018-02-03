"""
Thank you Heavenly Father
"""
import sys
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot


class Convertor(QObject):
    
    def __init__(self):
        QObject.__init__(self)
        
    progress = pyqtSignal(int, arguments=["start"])
    completed = pyqtSignal(str, arguments=["completeStatus"])
    
    @pyqtSlot(str, str)
    def start(self, orig_file, save_file):
        print(orig_file[8:])
        for x in range(2000):
            self.progress.emit(x/10)
        self.completeStatus(save_file)
        
    @pyqtSlot(str)
    def completeStatus(self, saved_file):
        print('here')
        self.completed.emit(saved_file[8:])

app = QGuiApplication(sys.argv)
engine = QQmlApplicationEngine()
convertor = Convertor()
engine.rootContext().setContextProperty('convert', convertor)
engine.load('main.qml')
engine.quit.connect(app.quit)
sys.exit(app.exec_())