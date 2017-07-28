#!/usr/bin/python
import sys
import os
ele1 = sys.argv[1]
scriptdir = sys.path[0]
with open(scriptdir+'/ECdatabase','r') as f:
    tmplines = f.readlines()
    for tmpline in tmplines:
        if ' '+ele1+' ' in tmpline:
            line = ['['+x for x in tmpline.split('[')]
            print ele1,': ',line[1],'->  ',line[2],
            break
