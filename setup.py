from distutils.core import setup
import os, sys, glob

def read(fname):
    return open(os.path.join(os.path.dirname(__file__), fname)).read()

setup(name="QAuxilium",
      scripts=['QAuxilium'],
      version='0.1.0',
      maintainer="Boris Pohler",
      maintainer_email="email@example.com",
      description="A PySide example",
      long_description=read('QAuxilium.longdesc'),
      data_files=[('share/applications/hildon',['QAuxilium.desktop']),
                  ('share/icons', ['QAuxilium.png']),
                  ('/opt/usr/share/QAuxilium/qml', glob.glob('qml/*.qml')), ],)
