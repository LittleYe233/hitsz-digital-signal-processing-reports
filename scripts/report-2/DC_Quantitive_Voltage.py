import matplotlib.pyplot as plt

plt.rcParams['mathtext.fontset'] = 'cm'
plt.rcParams['font.size'] = 11
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.serif'] = ['Noto Serif CJK SC'] + plt.rcParams['font.serif']
plt.rcParams['lines.linewidth'] = 1

fig = plt.figure(num='DC_Quantitive_Voltage', clear=True, layout='constrained')
ax = fig.add_subplot()

x = [-2.5, -2, -1.5, -1, -0.5, 0.5, 1, 1.5, 2, 2.5]
y = [0b00000000, 0b00010111, 0b00110001, 0b01001010, 0b01100100, 0b10010111, 0b10110001, 0b11001010, 0b11100100, 0b11111101]

ax.scatter(x, y)
ax.plot(x, y)

fig.suptitle('DC 电压与量化电平关系曲线')
plt.grid(True)
plt.savefig('DC_Quantitive_Voltage.png')
plt.show()
