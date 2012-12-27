#!/usr/bin/python

from pylab import *

colors = ('b','g','r','c','m','y','k')

util = [0,25,50,75,100]
cpu2_500MHz = [823.35, 950.23, 1163.26, 1333.05, 1412.64]
cpu1_200MHz = [789.41, 843.09, 877.57, 906.4, 924.2]
cpu1_500MHz = [793.67, 906.69, 988.84, 1083.85, 1126.75]
cpu1_800MHz = [806.81, 1008.52, 1181.77, 1352.39, 1455.43]
cpu1_1000MHz = [816.2, 1118.17, 1383.81, 1656.55, 1825.42]
cpu1_1200MHz = [828.85, 1282.04, 1671.99, 2029.47, 2341.79]


figure(1)

plot(util, cpu1_200MHz, linestyle='--', marker='*', color=colors[6], label='1cpu_200MHz') 
plot(util, cpu2_500MHz, linestyle='--', marker='D', color=colors[6], label='2cpu_500MHz') 
plot(util, cpu1_500MHz, linestyle='--', marker='+', color=colors[6], label='1cpu_500MHz') 
plot(util, cpu1_800MHz, linestyle='--', marker='x', color=colors[6], label='1cpu_800MHz') 
plot(util, cpu1_1000MHz, linestyle='--', marker='o', color=colors[6], label='1cpu_1000MHz') 
plot(util, cpu1_1200MHz, linestyle='--', marker=r'$\bowtie$', color=colors[6], label='1cpu_1200MHz') 
legend(loc=0, borderaxespad=0.)
axis([0,100,600,2400])
xlabel('Util(%)')
ylabel('Power(mW)')
grid(True)

show()
