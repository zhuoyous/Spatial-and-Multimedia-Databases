import numpy as np
from math import pi, cos, sin

scale = 5000
R = 6/scale
r = 1/scale
a = 8/scale
t = 0.00
x = -118.285444
y = 34.020564

with open('coordinates.txt', 'w') as f:
    while t < 16*pi:
        fx = (R + r) * cos((r / R) * t) - a * cos((1 + r / R) * t) + x
        fy = (R + r) * sin((r / R) * t) - a * sin((1 + r / R) * t) + y
        text = ''
        text += str(fx)+ ',' +str(fy)+ ',0.\n'
        f.write(text)
        t += 0.01
        
