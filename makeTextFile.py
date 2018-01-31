#!/usr/bin/env python
'makeTextFile.py -- create text file'

import os
ls=os.linesep

#get filename
while True:
    fname=raw_input('input a file name to save filenames:%s' % ls)
    if os.path.exists(fname):
        print "ERROR:'%s' already exists" % fname
    else:
        break

#get file content (text) lines
all=[]
print ('senetr filename:%s' % ls)
print ('enter lines \'.\' by itself to quit%s'%ls)

#loop until user terminates input
while True:
    entry=raw_input('> ')
    if entry == '.':
        break
    else:
        all.append(entry)

# write lines to file with proper line-ending
fwobj=open(fname,'w')
fwobj.writelines(['%s%s' % (x,ls) for x in all])
fwobj.close()
print 'WRITE DONE'
print

try:
    frobj=open(fname,'r')
except IOError,e:
    print "*** file open error",e
else:
    #display contents to the screen
    for eachLine in frobj:
        print eachLine,
    frobj.close()
    print 'READ DONE'
