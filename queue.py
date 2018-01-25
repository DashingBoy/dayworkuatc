#!/usr/bin/env python

queue=[]

def enQ():
    queue.append(raw_input('Enter New String:').strip())

def ouQ():
    if len(queue)==0:
        print 'Cannot Out from an empty queue'
    else:
        print 'Removed [',`queue.pop(0)`,']'

def viewQ():
    print queue
 
CMDs={'e':enQ,'o':ouQ,'v':viewQ}

def showmenu():
    pr="""
(E)nqueue
(O)utqueue
(V)iewqueue
(Q)uitqueue
Enter choice:"""
    while True:
        while True:
            try:
                choice=raw_input(pr).strip()[0].lower()
            except (EOFError,KeyboardInterrupt,IndexError):
                choice='q'
            print '\nYou Picked:[%s]'%choice
            if choice not in 'eovq':
                print 'Invalid option,try again'
            else:
                break
        if choice=='q':
            break
        CMDs[choice]()
if __name__=='__main__':
    showmenu()
