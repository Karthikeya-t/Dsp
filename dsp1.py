# -*- coding: utf-8 -*-
"""
Created on Thu Jan 16 12:29:54 2020

@author: KARTHIKEYA
"""
import matplotlib.pyplot as plt
import numpy as np
plt.close("all")
w=np.linspace(-np.pi,np.pi,101)
z=np.exp(1j*w)
z=1/z
#h2=z+0.5
h1=((1-3*z)/(1-(1/3)*z))*(1/3) #all pass
h2=((1-(1/3)*z)/(1-0.5*z))#min phase
#h1=((1-3*z)/(1-0.5*z)) #H(z)=(a-z^-1)/(1-az^-1)
#h2=(1-(1/3)*z)/(1-(1/3)*z)
H=h1*h2
plt.figure(1)
plt.subplot(4,1,1)
plt.plot(w,abs(h1))
plt.subplot(4,1,2)
plt.plot(w,np.angle(h1))
plt.subplot(4,1,3)
plt.plot(w,abs(h2))
plt.subplot(4,1,4)
plt.plot(w,np.unwrap(np.angle(h2)))
plt.figure(2)
plt.subplot(2,1,1)
plt.plot(w,abs(H))
plt.subplot(2,1,2)
plt.plot(w,np.angle(H))
'''a=3
N=5
H1=(1-(a*exp(1j*w*N))/(1-(a*z))
plt.figure(3)
plt.subplot(2,1,1)
plt.plot(w,abs(H1))
plt.subplot(2,1,2)
plt.plot(w,np.angle(H1))'''