# -*- coding: utf-8 -*-
"""
Created on Sun Mar 22 15:50:06 2020

@author: KARTHIKEYA
"""

import matplotlib.pyplot as plt
import numpy as np

w=np.linspace(-np.pi,np.pi,101)
z=np.exp(1j*w)
z=1/z
a=0.5
H=z-a
H1=a*z-1
plt.figure(1)
plt.subplot(2,1,1)
plt.plot(w,abs(H))
plt.xlabel('w')
plt.title('1/z - a')
plt.ylabel('|H(w)|')
plt.subplot(2,1,2)
plt.plot(w,np.angle(H))
plt.xlabel('w')
plt.ylabel('phase H(w)')
plt.figure(2)
plt.subplot(2,1,1)
plt.plot(w,abs(H1))
plt.xlabel('w')
plt.title(a/z - 1)
plt.ylabel('|H1(w)|')
plt.subplot(2,1,2)
plt.plot(w,np.unwrap(np.angle(H1)))
plt.xlabel('w')
plt.ylabel('phase H1(w)')