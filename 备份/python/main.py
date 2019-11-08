#!user/bin/python

import os
import os.path
import sys

def mkdir(path):
	folder = os.path.exists(path) 
	if not folder:
		os.makedirs(path)

def copyfile(src, dst):
    open(dst, "wb").write(open(src, "rb").read()) 

def copyTargetFile(srcDir, dstDir):
    print 'copy file'
    fo = open('file.txt', 'r')
    line = fo.readline()
    while line:
        index = line.find('//')
        if 0 != index:
            continue
        line = line[2:]
        line = line.replace('\n', '')
        srcFilePath = srcDir + '\\' + line
        list = line.split('/')
        dirPath = dstDir
        for item in list:
            if item == list[-1]:
                dstFilePath = dstDir + '\\' + line
                copyfile(srcFilePath, dstFilePath)
            else:
                dirPath = dirPath + '\\' + item
                mkdir(dirPath)

        line = fo.readline()
    fo.close()
        

if __name__ == '__main__':
    print 'begin run...'

    python_path =  sys.argv[0]
    (python_dir, filename) = os.path.split(python_path)

    file_dir = python_dir + "\\base"
    parent_dir = python_dir + "\\..\\src"
    mkdir(file_dir)
    copyTargetFile(parent_dir, file_dir)

    print 'exited ...'