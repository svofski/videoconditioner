#!/usr/bin/env python

import numpy as np
from random import uniform

 
def fir(fc, b, N=-1):
    #fc = 0.1  # Cutoff frequency as a fraction of the sample rate (in (0, 0.5)).
    #b = 0.08  # Transition band, as a fraction of the sample rate (in (0, 0.5)).
    if N == -1:
        N = int(np.ceil((4 / b)))
    if not N % 2: N += 1  # Make sure that N is odd.
    n = np.arange(N)
      
    # Compute sinc filter.
    h = np.sinc(2 * fc * (n - (N - 1) / 2.))
       
    # Compute Blackman window.
    w = 0.42 - 0.5 * np.cos(2 * np.pi * n / (N - 1)) + 0.08 * np.cos(4 * np.pi * n / (N - 1))
            
    # Multiply sinc filter with window.
    h = h * w
             
    # Normalize to get unity gain.
    h = h / np.sum(h)

    return h

def rsig(n):
    for x in xrange(n):
        yield uniform(-1,1)

# 0.2/0.05 looks ok but probably entirely useless
# 0.1/0.05 perhaps better
filter = fir(0.05, 0.1) #, 15)
print "#Filter length=%d" % len(filter)


Fs=12000000 # 12 MSPS
line_length = Fs / 15625
blanking_width = 13.7e-6
front_porch_width = 1.65e-6
hsync_width = 4e-6
back_porch_width = blanking_width - front_porch_width - hsync_width

def oneline(Fs):
    line_length = Fs / 15625
    Tline = 1.0/15625
    Tpixel = Tline/line_length
    dt = Tline/line_length

    result = [0.3] * int(front_porch_width/Tpixel)
    result = result + [0.0] * int(hsync_width/Tpixel)
    result = result + [0.3] * int(back_porch_width/Tpixel)

    moar = int(line_length - len(result))
    result = result + [0.5 + 0.25*x for x in rsig(moar)]
    return result

def noisify(sample, size):
    return [x + uniform(-size/2,size/2) for x in sample]

input = noisify(oneline(Fs) * 2, 0.2)

filtered = np.convolve(input, filter)

fft = np.fft.fft(filtered).real

fo=open("coeffs.txt", "w")
for i, x in enumerate(filter):
  fo.write("%s," % (str(x)))
fo.close()

fo=open("input.txt", "w")
for i, x in enumerate(input):
  fo.write("%d %s\n" % (i, str(x)))
fo.close()

fo=open("filtered.txt", "w")
for i, x in enumerate(filtered):
  fo.write("%d %s\n" % (i, str(x)))
fo.close()

fo=open("fft.txt", "w")
for i, x in enumerate(fft):
  fo.write("%d %s\n" % (i, str(x)))
fo.close()
