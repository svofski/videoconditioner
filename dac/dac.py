#!/usr/bin/env/python

from random import uniform

crval=[4000,2000,1000,500]

def tolerancize(ideal, p):
    dev = ideal * p
    return ideal + uniform(-dev, dev)    

rval=[tolerancize(crval[x % 4], 0.05) for x in xrange(12)]

def Rpar(r):
    if len(r) == 0:
        return 1e9
    return 1.0/sum([1.0/x for x in r])

def Vdiv(Vin, Rtop, Rbottom):
    return 1.0 * Vin * Rbottom/(Rtop + Rbottom)

def circuit(x):
    top = []
    bottom = [75]
    for i in xrange(12):
        if x & 1 == 1:
            top = top + [rval[i]]
        else:
            bottom = bottom + [rval[i]]
        x = x >> 1
    #print "top=", top
    #print "bottom=", bottom
    return Vdiv(2.5, Rpar(top), Rpar(bottom)) 


def every(range):
    return enumerate([circuit(x) for x in xrange(range)])

def same(x,y):
    return abs(x - y) < 0.015

def last(x):
    if isinstance(x,list):
        return x[-1]
    else:
        return x

def tolist(x):
    return x if isinstance(x, list) else [x] 

def uniq(values):
    return reduce(lambda x, y: x if same(last(x)[1], y[1]) else tolist(x) + [y], 
        values)

def distances(values):
    z = zip(values, values[1:])
    d = map(lambda x: x[1][1] - x[0][1], z)
    return d

def average(values):
    return sum(values)/len(values)

def anal(range):
    all = list(every(range))
    key = lambda x: x[1]
    maximum = max(all, key = key)
    minimum = min(all, key = key)
    s = sorted(all, key = key)

    print "Range = [%1.2f, %1.2f]" % (minimum[1], maximum[1])
    unique = uniq(s)
    print "Unique values = %d" % len(unique)
    dist = distances(unique)
    #return unique
    #return s

    linear = []
    dy = maximum[1] / 64.0
    y = 0.0
    i = 0
    for x in xrange(64):
        while unique[i][1] < y:
            i = i + 1
        linear = linear + [unique[i]]
        y = y + dy
    print "linear=", linear
    return linear

def mif(range):
    f = open("dac.mif", "w") 
    f.write("DEPTH=64;\nWIDTH=12;\nADDRESS_RADIX=HEX;\nDATA_RADIX=HEX;\nCONTENT\nBEGIN\n")
    f.write("\n".join(["%02x:%03x;" % (i, x[0]) for i, x in enumerate(anal(range))]))
    f.write("\nEND\n")
    f.close()

def gnuplot(range):
    f = open("dac.txt", "w") 
    f.write("\n".join(["%d %3.6f" % (i, x[1]) for i, x in enumerate(anal(range))]))
    f.close()

mif(16384)
gnuplot(16384)
