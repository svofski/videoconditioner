#!/usr/bin/env python
from math import sin, pi

def sintable(mag):
    middle = mag / 2
    scale = mag / 2 - 1
    f = open("sintable.mif", "w") 
    f.write("DEPTH=64;\nWIDTH=6;\nADDRESS_RADIX=HEX;\nDATA_RADIX=HEX;\nCONTENT\nBEGIN\n")
    for i,t in enumerate([int(round(middle+scale*sin(x/64.0*2*pi))) for x in xrange(64)]): f.write("%x:%04x;\n"%(i,t))
    f.write("\nEND\n")
    f.close()


sintable(64)