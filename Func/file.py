"""
Thank you Heavenly Father
"""
import sys
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QObject, pyqtSlot, pyqtSignal

class Convertor(QObject):
    
    def __init__(self):
        QObject.__init__(self)


app = QGuiApplication(sys.argv)
convertor = Convertor()
engine = QQmlApplicationEngine()
engine.rootContext().setContextProperty('convertor', convertor)
engine.load('main.qml')
engine.quit.connect(app.quit)
sys.exit(app.exec_())