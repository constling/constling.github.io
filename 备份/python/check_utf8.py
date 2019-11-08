#!user/bin/python

import os
import os.path
import sys
import codecs


def existBOM(file_name):
    file_obj = open(file_name,'r')
    code = file_obj.read(3)
    file_obj.close()
    if code == codecs.BOM_UTF8:
        return True
    return False

def checkDir(srcDir):
    list = os.walk(srcDir)
    for root, dirs, files in list:
        for name in files:
            filepath = os.path.join(root, name)
            if False == existBOM(filepath):
                print("%s\n"%(filepath))

if __name__ == '__main__':
    checkDir('./')